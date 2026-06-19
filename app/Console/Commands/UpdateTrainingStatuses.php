<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\Training;
use Carbon\Carbon;

class UpdateTrainingStatuses extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:update-training-statuses';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $now = now();

        $trainings = Training::whereIn('status', [
            'pending',
            'ongoing'
        ])->get();

        foreach ($trainings as $training) {

            $start = \Carbon\Carbon::parse(
                $training->date . ' ' . $training->start_time
            );

            $end = \Carbon\Carbon::parse(
                $training->date . ' ' . $training->end_time
            );

            if (
                $now >= $start &&
                $now < $end
            ) {
                $training->update([
                    'status' => 'ongoing'
                ]);
            }

            if ($now >= $end) {
                $training->update([
                    'status' => 'completed'
                ]);
            }
        }

        return self::SUCCESS;
    }
}
