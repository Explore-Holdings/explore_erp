<?php

namespace App\Exports;

use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\WithStyles;
use Maatwebsite\Excel\Concerns\WithColumnWidths;
use Maatwebsite\Excel\Concerns\WithTitle;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Events\AfterSheet;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Style\Border;
use PhpOffice\PhpSpreadsheet\Style\Alignment;

class VehicleRequestExport implements
    WithColumnWidths,
    WithTitle,
    WithEvents
{
    protected Collection $rows;

    public function __construct(Collection $rows)
    {
        $this->rows = $rows;
    }

    public function title(): string
    {
        return 'Vehicle Requests';
    }

    public function columnWidths(): array
    {
        return [
            'A' => 14,
            'B' => 16,
            'C' => 24,
            'D' => 12,
            'E' => 14,
            'F' => 14,
            'G' => 10,
            'H' => 14,
            'I' => 22,
            'J' => 22,
            'K' => 26,
            'L' => 16,
            'M' => 22,
            'N' => 22,
            'O' => 16,
            'P' => 16,
            'Q' => 12,
            'R' => 12,
        ];
    }


    public function registerEvents(): array
    {
        return [
            AfterSheet::class => function (AfterSheet $event) {

                $sheet = $event->sheet->getDelegate();

                /*
                |--------------------------------------------------------------------------
                | Report Heading
                |--------------------------------------------------------------------------
                */

                $sheet->mergeCells('A1:R1');
                $sheet->mergeCells('A2:R2');

                $sheet->setCellValue('A1', 'EXPLORE HOLDINGS');
                $sheet->setCellValue('A2', 'Vehicle Request Report');

                $sheet->setCellValue('A3', 'Generated On');
                $sheet->setCellValue('B3', now()->format('d M Y h:i A'));

                /*
                |--------------------------------------------------------------------------
                | Table Headings
                |--------------------------------------------------------------------------
                */

                $headings = [
                    'Vehicle',
                    'Trip Code',
                    'Employee / Chauffeur',
                    'Type',
                    'Start Date',
                    'End Date',
                    'Attempts',
                    'Status',
                    'Pickup',
                    'Destination',
                    'Reject Reason',
                    'Requested On',
                    'Trip Start DateTime',
                    'Trip End DateTime',
                    'Start Odometer',
                    'End Odometer',
                    'Start Fuel %',
                    'End Fuel %',
                ];

                $columns = range('A', 'R');

                foreach ($headings as $i => $heading) {
                    $sheet->setCellValue($columns[$i] . '5', $heading);
                }

                /*
                |--------------------------------------------------------------------------
                | Styles
                |--------------------------------------------------------------------------
                */

                $sheet->getParent()->getDefaultStyle()->getFont()
                    ->setName('Cambria')
                    ->setSize(11);

                $sheet->getStyle('A1')->applyFromArray([
                    'font' => [
                        'bold' => true,
                        'size' => 22,
                        'color' => ['rgb' => 'FFFFFF'],
                        'name' => 'Cambria',
                    ],
                    'alignment' => [
                        'horizontal' => Alignment::HORIZONTAL_CENTER,
                    ],
                    'fill' => [
                        'fillType' => Fill::FILL_SOLID,
                        'startColor' => ['rgb' => '1E3A8A'],
                    ],
                ]);

                $sheet->getStyle('A2')->applyFromArray([
                    'font' => [
                        'bold' => true,
                        'size' => 15,
                        'name' => 'Cambria',
                    ],
                    'alignment' => [
                        'horizontal' => Alignment::HORIZONTAL_CENTER,
                    ],
                ]);

                $sheet->getStyle('A5:R5')->applyFromArray([
                    'font' => [
                        'bold' => true,
                        'size' => 11,
                        'color' => ['rgb' => 'FFFFFF'],
                        'name' => 'Cambria',
                    ],
                    'fill' => [
                        'fillType' => Fill::FILL_SOLID,
                        'startColor' => ['rgb' => '1a85d5'],
                    ],
                    'alignment' => [
                        'horizontal' => Alignment::HORIZONTAL_CENTER,
                        'vertical' => Alignment::VERTICAL_CENTER,
                    ],
                    'borders' => [
                        'allBorders' => [
                            'borderStyle' => Border::BORDER_THIN,
                        ],
                    ],
                ]);

                /*
                |--------------------------------------------------------------------------
                | Write Data
                |--------------------------------------------------------------------------
                */

                $row = 6;

                foreach ($this->rows as $data) {

                    $cells = [
                        $data['vehicle_no'] ?? '',
                        $data['trip_code'] ?? '',
                        $data['employee_name'] ?: ($data['chauffer_name'] ?? ''),
                        strtoupper($data['type'] ?? ''),
                        $data['start_date'] ?? '',
                        $data['end_date'] ?? '',
                        $data['attempts_count'] ?? '',
                        $data['status'] ?? '',
                        $data['start_destinations'] ?? '',
                        $data['destinations'] ?? '',
                        $data['reject_reason'] ?? '',
                        $data['created_at'] ?? '',
                        $data['trip_details']['trip_start_datetime'] ?? '',
                        $data['trip_details']['trip_end_datetime'] ?? '',
                        $data['trip_details']['trip_start_odometer'] ?? '',
                        $data['trip_details']['trip_end_odometer'] ?? '',
                        $data['trip_details']['start_trip_fuel'] ?? '',
                        $data['trip_details']['end_trip_fuel'] ?? '',
                    ];

                    foreach ($cells as $i => $value) {
                        $sheet->setCellValue($columns[$i] . $row, $value);
                    }

                    $row++;
                }

                $highestRow = $sheet->getHighestRow();

                $sheet->freezePane('A6');

                $sheet->setAutoFilter("A5:R{$highestRow}");
            }
        ];
    }
}