<x-app-layout>
<x-slot name="header">
    <h2 class="font-semibold text-xl text-gray-800 leading-tight">
	{{ __('Dashboard') }}
    </h2>
</x-slot>

<div class="py-12">
    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
	<div class="bg-white overflow-hidden shadow-xl sm:rounded-lg p-5">
	    <div class="flex">
		<div class="flex-auto text-2xl mb-4">Time Log</div>

<div class="flex-auto text-right mt-2">
		    <a href="/timelogs" class="bg-blue-500 hover:bg-blue-700 font-bold py-2 px-4 text-white rounded">Add</a>
</div>
	    </div>
	    <table class="w-full text-md rounded mb-4">
		<thead>
		<tr class="border-b">
		    <th class="text-left p-3 px-5">Start</th>
		    <th class="text-left p-3 px-5">End</th>
		    <th class="text-left p-3 px-5">Hours</th>
		</tr>
		</thead>
		<tbody>
		@foreach(auth()->user()->timelogs as $timelog)
		    <tr class="border-b hover:bg-orange-100">
			<td class="p-3 px-5">
			    {{$timelog->sdateandtime}}
			</td>
			<td class="p-3 px-5">
			    {{$timelog->edateandtime}}
			</td>
			<td class="p-3 px-5" id="to">
			    {{$timelog->hours}}
			</td>
			<td class="p-3 px-5">

			    <a href="/timelogs/{{$timelog->id}}" name="edit" class="mr-3 text-sm bg-blue-500 hover:bg-blue-700 text-white py-1 px-2 rounded focus:outline-none focus:shadow-outline">Edit</a>
			    <form action="/timelogs/{{$timelog->id}}" class="inline-block">
				<button type="submit" name="delete" formmethod="POST" class="text-sm bg-red-500 hover:bg-red-700 text-white py-1 px-2 rounded focus:outline-none focus:shadow-outline">Delete</button>
				{{ csrf_field() }}
			    </form>
			</td>
		    </tr>
		@endforeach
		</tbody>
	    </table>

	</div>
    </div>
</div>
</x-app-layout>

