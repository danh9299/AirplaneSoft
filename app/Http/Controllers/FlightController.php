<?php

namespace App\Http\Controllers;

use App\Models\Flight;
use Illuminate\Http\Request;

class FlightController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $flights = Flight::all();
        return view('flights.index', ['flights' => $flights]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        return view('flights.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
        $request->validate([
        
            'Aircraft_ID' => 'required',
            'Departure_Airport' => 'required',
            'Arrival_Airport' => 'required',
            'Departure_Time' => 'required',
            'Arrival_Time' => 'required',
            'Flight_Duration' => 'required',
        ]);

        $flight = new Flight;
        $flight->Aircraft_ID = $request->Aircraft_ID;
        $flight->Departure_Airport = $request->Departure_Airport;
        $flight->Arrival_Airport = $request->Arrival_Airport;
        $flight->Departure_Time = $request->Departure_Time;
        $flight->Arrival_Time = $request->Arrival_Time;
        $flight->Flight_Duration = $request->Flight_Duration;


        // Chuyển hướng về trang danh sách tạp chí
        $flight->save();
        return redirect()->route('flights.index')->with('success','Flight Added');
    }

    /**
     * Display the specified resource.
     */
    public function show(Flight $flight)
    {
        //
        return view('flights.show', compact('flight'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Flight $flight)
    {
        //
        return view('flights.edit', compact('flight'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Flight $flight)
    {
        //
        $request->validate([
        
            'Aircraft_ID' => 'required',
            'Departure_Airport' => 'required',
            'Arrival_Airport' => 'required',
            'Departure_Time' => 'required',
            'Arrival_Time' => 'required',
            'Flight_Duration' => 'required',
        ]);

        $flight = Flight::find($request->hidden_id);
        $flight->Aircraft_ID = $request->Aircraft_ID;
        $flight->Departure_Airport = $request->Departure_Airport;
        $flight->Arrival_Airport = $request->Arrival_Airport;
        $flight->Departure_Time = $request->Departure_Time;
        $flight->Arrival_Time = $request->Arrival_Time;
        $flight->Flight_Duration = $request->Flight_Duration;
        $flight->save();

        // Chuyển hướng về trang danh sách tạp chí
        return redirect()->route('flights.index')->with('success', 'Flight Data has been updated successfully');

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Flight $flight)
    {
        //
        $flight->delete();

        return redirect()->route('flights.index')->with('success', 'Flight Data deleted successfully');
    }
}
