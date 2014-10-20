module tetrastar()
{
	l = 10;
	union() {

		polyhedron(
			points = [
				[l, -l, -l],
				[-l, l, -l],
				[-l, -l, l],
				[l, l, l]
			],
			triangles = [
				[0,1,2],
				[1,0,3],
				[0,2,3],
				[1,3,2]
			]
		);
		polyhedron(
			points = [
				[l, -l, l],
				[-l, l, l],
				[-l, -l, -l],
				[l, l, -l]
			],
			triangles = [
				[0,1,2],
				[1,0,3],
				[0,2,3],
				[1,3,2]
			]
		);
	}
}

tetrastar();