@extends('master')

@section('content')

@if($errors->any())

<div class="alert alert-danger">
    <ul>
    @foreach($errors->all() as $error)

        <li>{{ $error }}</li>

    @endforeach
    </ul>
</div>

@endif

<div class="card">
    <div class="card-header">Add Flight</div>
    <div class="card-body">
        <form method="post" action="{{ route('flights.store') }}" enctype="multipart/form-data">
            @csrf
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">Aircraft ID</label>
                <div class="col-sm-10">
                    <input type="text" name="Aircraft_ID" class="form-control" />
                </div>
            </div>
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">Departure Airport</label>
                <div class="col-sm-10">
                    <input type="text" name="Departure_Airport" class="form-control" />
                </div>
            </div>
            <div class="row mb-4">
                <label class="col-sm-2 col-label-form">Arrival Airport</label>
                <div class="col-sm-10">
                <input type="text" name="Arrival_Airport" class="form-control" />
                </div>
            </div>
            <div class="row mb-4">
                <label class="col-sm-2 col-label-form">Departure Time</label>
                <div class="col-sm-10">
                <input type="time" name="Departure_Time" class="form-control" />
                </div>
            </div>
            <div class="row mb-4">
                <label class="col-sm-2 col-label-form">Arrival Time</label>
                <div class="col-sm-10">
                <input type="time" name="Arrival_Time" class="form-control" />
                </div>
            </div>
            <div class="row mb-4">
                <label class="col-sm-2 col-label-form">Flight Duration</label>
                <div class="col-sm-10">
                <input type="time" name="Flight_Duration" class="form-control" />
                </div>
            </div>
            <div class="text-center">
                <input type="submit" class="btn btn-primary" value="Add" />
            </div>
        </form>
    </div>
</div>

@endsection('content')
