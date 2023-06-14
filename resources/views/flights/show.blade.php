@extends('master')

@section('content')

<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col col-md-6"><b>Flight Details</b></div>
            <div class="col col-md-6">
                <a href="{{ route('flights.index') }}" class="btn btn-primary btn-sm float-end">View All</a>
            </div>
        </div>
    </div>
    <div class="card-body">
        <div class="row mb-3">
            <label class="col-sm-2 col-label-form"><b>Aircraft ID</b></label>
            <div class="col-sm-10">
                {{ $flight->Aircraft_ID }}
            </div>
        </div>
        <div class="row mb-3">
            <label class="col-sm-2 col-label-form"><b>Departure Airport</b></label>
            <div class="col-sm-10">
                {{ $flight->Departure_Airport }}
            </div>
        </div>
        <div class="row mb-4">
            <label class="col-sm-2 col-label-form"><b>Arrival Airport</b></label>
            <div class="col-sm-10">
                {{ $flight->Arrival_Airport }}
            </div>
        </div>
        <div class="row mb-4">
            <label class="col-sm-2 col-label-form"><b>Departure Time</b></label>
            <div class="col-sm-10">
                {{ $flight->Departure_Time }}
            </div>
        </div>
        <div class="row mb-4">
            <label class="col-sm-2 col-label-form"><b>Arrival Time</b></label>
            <div class="col-sm-10">
                {{ $flight->Arrival_Time }}
            </div>
        </div>
        <div class="row mb-4">
            <label class="col-sm-2 col-label-form"><b>Flight Duration</b></label>
            <div class="col-sm-10">
                {{ $flight->Flight_Duration }}
            </div>
        </div>
    </div>
</div>

@endsection('content')


