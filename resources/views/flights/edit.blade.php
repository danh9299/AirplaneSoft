@extends('master')

@section('content')

<div class="card">
    <div class="card-header">Edit Flight</div>
    <div class="card-body">
        <form method="post" action="{{ route('flights.update', $flight->Flight_ID) }}" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">Aircraft ID</label>
                <div class="col-sm-10">
                    <input type="text" name="Aircraft_ID" class="form-control" value="{{ $flight->Aircraft_ID }}" />
                </div>
            </div>
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">Departure Airport</label>
                <div class="col-sm-10">
                    <input type="text" name="Departure_Airport" class="form-control" value="{{ $flight->Departure_Airport }}" />
                </div>
            </div>
            <div class="row mb-4">
                <label class="col-sm-2 col-label-form">Arrival Airport</label>
                <div class="col-sm-10">
                <input type="text" name="Arrival_Airport" class="form-control" value="{{ $flight->Arrival_Airport }}" />
                </div>
            </div>
            <div class="row mb-4">
                <label class="col-sm-2 col-label-form">Departure Time</label>
                <div class="col-sm-10">
                <input type="time" name="Departure_Time" class="form-control" value="{{ $flight->Departure_Time }}" />
                </div>
            </div>
            <div class="row mb-4">
                <label class="col-sm-2 col-label-form">Arrival Time</label>
                <div class="col-sm-10">
                <input type="time" name="Arrival_Time" class="form-control" value="{{ $flight->Departure_Time }}" />
                </div>
            </div>
            <div class="row mb-4">
                <label class="col-sm-2 col-label-form">Flight Duration</label>
                <div class="col-sm-10">
                <input type="time" name="Flight_Duration" class="form-control" value="{{ $flight->Flight_Duration }}" />
                </div>
            </div>
            
            <div class="text-center">
                <input type="hidden" name="hidden_id" value="{{ $flight->Flight_ID }}" />
                <input type="submit" class="btn btn-primary" value="Edit" />
            </div>
        </form>
    </div>
</div>


@endsection('content')
