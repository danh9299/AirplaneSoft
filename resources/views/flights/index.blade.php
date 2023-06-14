@extends('master')

@section('content')

@if($message = Session::get('success'))

<div class="alert alert-success">
    {{ $message }}
</div>

@endif

<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col col-md-6"><b>Flight Data</b></div>
            <div class="col col-md-6">
                <a href="{{ route('flights.create') }}" class="btn btn-success btn-sm float-end">Add</a>
            </div>
        </div>
    </div>
    <div class="card-body">
        <table class="table table-bordered">
            <tr>
                <th>Aircraft ID</th>
                <th>Departure Airport</th>
                <th>Arrival Airport</th>
                <th>Departure Time</th>
                <th>Arrival Time</th>
                <th>Flight Duration</th>
                <th>Action</th>
            </tr>
            @if(count($flights) > 0)

                @foreach($flights as $row)

                    <tr>
                        <td>{{ $row->Aircraft_ID }}</td>
                        <td>{{ $row->Departure_Airport }}</td>
                        <td>{{ $row->Arrival_Airport }}</td>
                        <td>{{ $row->Departure_Time }}</td>
                        <td>{{ $row->Arrival_Time }}</td>
                        <td>{{ $row->Flight_Duration }}</td>
                        <td>
                            
                        <form method="post" action="{{ route('flights.destroy', $row->Flight_ID) }}">
                                @csrf
                                @method('DELETE')
                                <a href="{{ route('flights.show', $row->Flight_ID) }}" class="btn btn-primary btn-sm">View</a>
                                <a href="{{ route('flights.edit', $row->Flight_ID) }}" class="btn btn-warning btn-sm">Edit</a>
                                <input type="submit" class="btn btn-danger btn-sm" value="Delete" />
                            </form>


                        </td>
                    </tr>

                @endforeach

            @else
                <tr>
                    <td colspan="5" class="text-center">No Data Found</td>
                </tr>
            @endif
        </table>
       
    </div>
</div>

@endsection
