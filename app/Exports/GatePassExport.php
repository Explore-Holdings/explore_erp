<?php

namespace App\Exports;

use App\Models\GatePassRequest;
use Carbon\Carbon;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithCustomStartCell;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Events\AfterSheet;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Border;
use PhpOffice\PhpSpreadsheet\Style\Fill;

class GatePassExport implements
    FromCollection,
    WithHeadings,
    ShouldAutoSize,
    WithCustomStartCell,
    WithEvents
{
    protected string $filter;
    protected Carbon $from;
    protected Carbon $to;

    public function __construct(string $filter = 'today')
    {
        $this->filter = $filter;

        switch ($filter) {
            case 'today':
                $this->from = now()->startOfDay();
                $this->to = now()->endOfDay();
                break;
            case 'week':
                $this->from = now()->startOfWeek();
                $this->to = now()->endOfWeek();
                break;
            case 'month':
                $this->from = now()->startOfMonth();
                $this->to = now()->endOfMonth();
                break;
            case 'year':
                $this->from = now()->startOfYear();
                $this->to = now()->endOfYear();
                break;
            default:
                $this->from = now()->startOfDay();
                $this->to = now()->endOfDay();
        }
    }

    public function startCell(): string
    {
        return 'A7';
    }

    public function headings(): array
    {
        return [
            'Employee Name',
            'Contact No',
            'Gate Pass Date',
            'Out Time',
            'Return Time',
            'Vehicle No',
            'Status',
            'Reason',
            'Remark',
            'Gate Pass Code',
        ];
    }

    public function collection()
    {
        return GatePassRequest::query()
            ->whereBetween('gate_pass_date', [
                $this->from->toDateString(),
                $this->to->toDateString(),
            ])
            ->orderByDesc('gate_pass_date')
            ->get()
            ->map(fn($row) => [
                $row->employee_name,
                $row->contact_no,
                $row->gate_pass_date,
                $row->out_time,
                $row->return_time,
                $row->vehicle_no,
                $row->status,
                $row->reason,
                $row->remark,
                $row->gate_pass_code,
            ]);
    }

    public function registerEvents(): array
    {
        return [
            AfterSheet::class => function (AfterSheet $event) {

            $sheet = $event->sheet;

            // Default font
            $sheet->getParent()->getDefaultStyle()
                ->getFont()
                ->setName('Cambria')
                ->setSize(11);

            /*
            |--------------------------------------------------------------------------
            | Merge Cells
            |--------------------------------------------------------------------------
            */

            $sheet->mergeCells('A1:J1');
            $sheet->mergeCells('A2:J2');

            /*
            |--------------------------------------------------------------------------
            | Headings
            |--------------------------------------------------------------------------
            */

            $sheet->setCellValue('A1', 'EXPLORE HOLDINGS');
            $sheet->setCellValue('A2', 'Gate Pass Request Report');

            $sheet->setCellValue('A4', 'Filter');
            $sheet->setCellValue('B4', ucfirst($this->filter));

            $sheet->setCellValue('A5', 'Period');
            $sheet->setCellValue(
                'B5',
                $this->from->format('d M Y') .
                ' - ' .
                $this->to->format('d M Y')
            );

            $sheet->setCellValue('A6', 'Generated');
            $sheet->setCellValue(
                'B6',
                now()->format('d M Y h:i A')
            );

            /*
            |--------------------------------------------------------------------------
            | Company Heading
            |--------------------------------------------------------------------------
            */

            $sheet->getStyle('A1')->applyFromArray([
                'font'=>[
                    'name'=>'Cambria',
                    'bold'=>true,
                    'size'=>22,
                    'color'=>['rgb'=>'FFFFFF'],
                ],
                'alignment'=>[
                    'horizontal'=>Alignment::HORIZONTAL_CENTER,
                    'vertical'=>Alignment::VERTICAL_CENTER,
                ],
                'fill'=>[
                    'fillType'=>Fill::FILL_SOLID,
                    'startColor'=>['rgb'=>'287bc4'],
                ],
            ]);

            $sheet->getRowDimension(1)->setRowHeight(32);

            /*
            |--------------------------------------------------------------------------
            | Report Heading
            |--------------------------------------------------------------------------
            */

            $sheet->getStyle('A2')->applyFromArray([
                'font'=>[
                    'name'=>'Cambria',
                    'bold'=>true,
                    'size'=>16,
                    'color'=>['rgb'=>'1F2937'],
                ],
                'alignment'=>[
                    'horizontal'=>Alignment::HORIZONTAL_CENTER,
                ],
            ]);

            /*
            |--------------------------------------------------------------------------
            | Report Info
            |--------------------------------------------------------------------------
            */

            $sheet->getStyle('A4:B6')->applyFromArray([
                'font'=>[
                    'name'=>'Cambria',
                    'bold'=>true,
                    'size'=>11,
                ],
            ]);

            /*
            |--------------------------------------------------------------------------
            | Table Header
            |--------------------------------------------------------------------------
            */

            $sheet->getStyle('A7:J7')->applyFromArray([
                'font'=>[
                    'name'=>'Cambria',
                    'bold'=>true,
                    'size'=>11,
                    'color'=>['rgb'=>'FFFFFF'],
                ],
                'alignment'=>[
                    'horizontal'=>Alignment::HORIZONTAL_CENTER,
                    'vertical'=>Alignment::VERTICAL_CENTER,
                ],
                'fill'=>[
                    'fillType'=>Fill::FILL_SOLID,
                    'startColor'=>['rgb'=>'156daf'],
                ],
            ]);

            $sheet->getRowDimension(7)->setRowHeight(24);

            /*
            |--------------------------------------------------------------------------
            | Borders
            |--------------------------------------------------------------------------
            */

            $highestRow = $sheet->getHighestRow();

            $sheet->getStyle("A7:J{$highestRow}")
                ->applyFromArray([
                    'borders'=>[
                        'allBorders'=>[
                            'borderStyle'=>Border::BORDER_THIN,
                            'color'=>['rgb'=>'D1D5DB'],
                        ],
                    ],
                ]);

            /*
            |--------------------------------------------------------------------------
            | Alternate Rows
            |--------------------------------------------------------------------------
            */

            for ($row = 8; $row <= $highestRow; $row++) {

                if ($row % 2 == 0) {

                    $sheet->getStyle("A{$row}:J{$row}")
                        ->getFill()
                        ->setFillType(Fill::FILL_SOLID)
                        ->getStartColor()
                        ->setRGB('F9FAFB');
                }

                $status = strtolower(trim($sheet->getCell("G{$row}")->getValue()));

                switch ($status) {

                    case 'approved':
                        $sheet->getStyle("G{$row}")
                            ->getFill()
                            ->setFillType(Fill::FILL_SOLID)
                            ->getStartColor()
                            ->setRGB('DCFCE7');
                        break;

                    case 'rejected':
                        $sheet->getStyle("G{$row}")
                            ->getFill()
                            ->setFillType(Fill::FILL_SOLID)
                            ->getStartColor()
                            ->setRGB('FEE2E2');
                        break;

                    case 'pending':
                        $sheet->getStyle("G{$row}")
                            ->getFill()
                            ->setFillType(Fill::FILL_SOLID)
                            ->getStartColor()
                            ->setRGB('FEF3C7');
                        break;

                    case 'checked_out':
                        $sheet->getStyle("G{$row}")
                            ->getFill()
                            ->setFillType(Fill::FILL_SOLID)
                            ->getStartColor()
                            ->setRGB('DBEAFE');
                        break;
                }

                $sheet->getStyle("A{$row}:J{$row}")
                    ->getAlignment()
                    ->setVertical(Alignment::VERTICAL_CENTER);
            }

            /*
            |--------------------------------------------------------------------------
            | Freeze & Filter
            |--------------------------------------------------------------------------
            */

            $sheet->freezePane('A8');
            $sheet->setAutoFilter("A7:J{$highestRow}");

            /*
            |--------------------------------------------------------------------------
            | Footer
            |--------------------------------------------------------------------------
            */

            $footer = $highestRow + 2;

            $sheet->mergeCells("A{$footer}:J{$footer}");

            $sheet->setCellValue(
                "A{$footer}",
                'Generated by Explore Holdings HRMS • '.now()->format('d M Y h:i A')
            );

            $sheet->getStyle("A{$footer}")->applyFromArray([
                'font'=>[
                    'name'=>'Cambria',
                    'italic'=>true,
                    'size'=>10,
                    'color'=>['rgb'=>'6B7280'],
                ],
                'alignment'=>[
                    'horizontal'=>Alignment::HORIZONTAL_CENTER,
                ],
            ]);
            }
        ];
    }
}
