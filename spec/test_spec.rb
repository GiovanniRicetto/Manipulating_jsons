require_relative "../common/structure.rb"

include JsonA
include JsonB
include JsonC

describe 'Validating JSONs' do

    context 'JSON A' do
        it 'RGaspar test' do
            readJsonA1
            result = readJsonA1.first
            expect(result["action"]).to eq('paused')
            expect(result["user"]).to eq('rgaspar')
        end

        it 'PBocucci Test' do
            readJsonA2
            expect(readJsonA2).to eq(1)
        end

        it 'Nil User test' do
            readJsonA3
            expect(readJsonA3).to eq(true)
        end
    end

    context 'JSON B' do
        it 'Multiply by 3 test' do
            readJsonB1
            expect(readJsonB1).to eq([3, 6, 9, 12, 15, 6, 9])
        end

        it 'Odd Numbers test' do
            readJsonB2
            expect(readJsonB2).to eq([2, 4, 2])
        end

        it 'Multiply by 3 test' do
            readJsonB1
            expect(readJsonB3).to eq([1, 3, 5, 3])
        end

        it 'Multiply by 3 test' do
            readJsonB1
            expect(readJsonB4).to eq([4, 5])
        end   
    end

    context 'JSON C' do
        it 'All Pendings Days' do
            readJsonC1
            expect(readJsonC1).to eq([2, 23, 25, 29, 31])
        end

        it 'Day 29 - Night', :teste2 do
            readJsonC2
            expect(readJsonC2).to eq(
                [{"day"=>29,
                "month"=>7,
                "year"=>2020,
                "hour"=>18,
                "minute"=>0,
                "fullDate"=>"2020-07-29T18:00:00",
                "id"=>1341,
                "trainingScheduleAthleteId"=>157,
                "duration"=>"05:59:00",
                "isFinished"=>false,
                "partsOfDay"=>"Night",
                "scheduleType"=>"Monthly",
                "status"=>"Pending",
                "weekNumber"=>31,
                "weekEventIndex"=>1,
                "totalWeekEvents"=>1}])
        end

        it 'Has something at day 15?', :teste3 do
            readJsonC3
            expect(readJsonC3).to eq([])
        end

    end
end