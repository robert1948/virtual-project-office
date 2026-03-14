#!/usr/bin/env python3
"""Generate weekly KPI metric snippets from project-plan.csv.

This script provides a consistent, lightweight metrics basis for weekly
reporting. It uses `last_updated` as a completion-date proxy for on-time
calculation.
"""

from __future__ import annotations

import argparse
import csv
from dataclasses import dataclass
from datetime import date
from pathlib import Path


@dataclass
class PlanRow:
    plan_id: str
    status: str
    priority: str
    target_date: date | None
    last_updated: date | None


def parse_date(value: str) -> date | None:
    value = (value or "").strip()
    if not value:
        return None
    return date.fromisoformat(value)


def load_rows(csv_path: Path) -> list[PlanRow]:
    rows: list[PlanRow] = []
    with csv_path.open("r", encoding="utf-8", newline="") as handle:
        reader = csv.DictReader(handle)
        for raw in reader:
            rows.append(
                PlanRow(
                    plan_id=(raw.get("plan_id") or "").strip(),
                    status=(raw.get("status") or "").strip().lower(),
                    priority=(raw.get("priority") or "").strip().lower(),
                    target_date=parse_date(raw.get("target_date") or ""),
                    last_updated=parse_date(raw.get("last_updated") or ""),
                )
            )
    return rows


def compute_metrics(rows: list[PlanRow]) -> dict[str, float | int]:
    completed = [row for row in rows if row.status == "completed"]
    completed_total = len(completed)

    on_time = [
        row
        for row in completed
        if row.target_date is not None
        and row.last_updated is not None
        and row.last_updated <= row.target_date
    ]

    on_time_rate = (len(on_time) / completed_total * 100.0) if completed_total else 0.0

    open_high_priority = len(
        [row for row in rows if row.status != "completed" and row.priority == "high"]
    )

    planned = len([row for row in rows if row.status == "planned"])
    completed_count = completed_total

    return {
        "planned": planned,
        "completed": completed_count,
        "on_time_rate": on_time_rate,
        "open_high_priority": open_high_priority,
    }


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Generate weekly KPI metric lines from project-plan.csv"
    )
    parser.add_argument(
        "--csv-path",
        default="project-plan.csv",
        help="Path to project plan CSV (default: project-plan.csv)",
    )
    args = parser.parse_args()

    csv_path = Path(args.csv_path)
    if not csv_path.exists():
        raise SystemExit(f"CSV not found: {csv_path}")

    metrics = compute_metrics(load_rows(csv_path))

    print("Weekly KPI Metric Snippet")
    print(f"- Planned initiatives: {metrics['planned']}")
    print(f"- Completed initiatives: {metrics['completed']}")
    print(
        "- On-time delivery rate: "
        f"{metrics['on_time_rate']:.1f}% "
        "(using project-plan.csv last_updated<=target_date proxy)"
    )
    print(f"- Open high-priority items: {metrics['open_high_priority']}")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
