
/* ================================================================== */
/* LANDUSE & LANDCOVER
/* ================================================================== */

// used for background color and coast line
#land_low[zoom>=0][zoom<10] {
	polygon-fill: @land;
	polygon-gamma: 0.75;
}
#land_high[zoom>=10] {
	polygon-fill: @land;
	polygon-gamma: 0.75;
}

#big_forest[zoom>=6][zoom<=9] {
	polygon-fill: @wooded;
}

#landcover_gen0[zoom>8][zoom<=10],
#landcover_gen1[zoom>10][zoom<=12],
#landcover[zoom>12] {
	[type='cemetery']          { polygon-fill: @cemetery; }
	[type='college']           { polygon-fill: @school; }
	[type='commercial']        { polygon-fill: @industrial; }
	[type='common']            { polygon-fill: @park; }
	[type='forest']            { polygon-fill: @wooded; }
	[type='golf_course']       { polygon-fill: @sports; line-color: @standard_case*0.95; line-width: 1; }
	[type='grass']             { polygon-fill: @grass; polygon-opacity: 0.6; }
	[type='recreation_ground'] { polygon-fill: @grass; }
	[type='meadow']            { polygon-fill: @grass; polygon-opacity: 0.5;}
	[type='heath']             { polygon-fill: @grass; polygon-opacity: 0.5;}
	[type='farm']              { polygon-fill: @grass; polygon-opacity: 0.4;}
	[type='scrub']             { polygon-fill: @grass; }
	[type='hospital']          { polygon-fill: @hospital; }
	[type='industrial']        { polygon-fill: @industrial; }
	[type='park']              { polygon-fill: @park; }
	[type='parking'] {
		polygon-fill: @parking*1.05;
		polygon-opacity: 0.9;
		[zoom>=17]{
			marker-file: url(img/icon/parking.svg);
			marker-opacity: 0.25;
		}
		[zoom=17]{
			marker-transform: "scale(0.3)";
		}
		[zoom>=18]{
			marker-transform: "scale(0.5)";
		}
	}
	[type='pedestrian']  { polygon-fill: @pedestrian_fill; }
	[type='residential'] { polygon-fill: @residential; }
	[type='school']      { polygon-fill: @school; }
	[type='sports_center'], [type='stadium'], [type='pitch'] {
		polygon-fill: @sports;
		
		[zoom>13]{
			line-color: @standard_case*0.95;
			line-width: 0.5;
			[zoom>14]{line-width: 1;}
		}
	}
	[type='university'] { polygon-fill: @school; }
	[type='wood']       { polygon-fill: @wooded; }
	[type='playground'] {
		polygon-fill: @sports;
		[zoom>=17]{
			marker-file: url(img/icon/playground.svg);
				marker-opacity: 0.5;
				marker-clip: false;
		}
		[zoom=17]{
			marker-transform: 'scale(0.03)';
		}
		[zoom>=18]{
			marker-transform: 'scale(0.03)';
		}
	}
}


/* ================================================================== */
/* AEROWAYS
/* ================================================================== */

#aeroway[zoom>10] {
	line-color:@aeroway;
	line-cap:butt;
	line-join:miter;
	[type='runway'] {
		[zoom=10]{ line-width:1; }
		[zoom=11]{ line-width:2; }
		[zoom=12]{ line-width:3; }
		[zoom=13]{ line-width:5; }
		[zoom=14]{ line-width:7; }
		[zoom=15]{ line-width:11; }
		[zoom=16]{ line-width:15; }
		[zoom=17]{ line-width:19; }
		[zoom>17]{ line-width:23; }
	}
	[type='taxiway'] {
		[zoom=10]{ line-width:0.2; }
		[zoom=11]{ line-width:0.2; }
		[zoom=12]{ line-width:0.2; }
		[zoom=13]{ line-width:1; }
		[zoom=14]{ line-width:1.5; }
		[zoom=15]{ line-width:2; }
		[zoom=16]{ line-width:3; }
		[zoom=17]{ line-width:4; }
		[zoom>17]{ line-width:5; }
	}
}


/* ================================================================== */
/* WATER AREAS
/* ================================================================== */

Map{ 
	background-color:@water;
}

#waterarea_low[zoom>=7][zoom<=9],
#waterarea_med[zoom>=10][zoom<=11],
#waterarea[zoom>=12] {
	polygon-fill: @water;
	polygon-smooth: 0.6;
	polygon-clip: false;
}


/* ================================================================== */
/* WATER WAYS
/* ================================================================== */

#waterway_low[zoom>=7][zoom<=12] {
	line-color: @water;
	[zoom=7] { line-width: 0.1; }
	[zoom=8] { line-width: 0.25; }
	[zoom=9] { line-width: 0.6; }
	[zoom=10]{ line-width: 1.0; }
	[zoom=11]{ line-width: 1.5; }
	[zoom=12]{ line-width: 2.0; }
}

#waterway_med[zoom>=13][zoom<=14] {
	/*polygon-fill: @water;*/
	line-color: @water;
	[type='river'],
	[type='canal'] {
		line-cap: round;
		line-join: round;
		[zoom=13]{ line-width: 3.0; }
		[zoom=14]{ line-width: 4.0; }
	}
	[type='stream'] {
		[zoom=13]{ line-width: 2.0; }
		[zoom=14]{ line-width: 1.75; }
	}
}
	
#waterway_high[zoom>=15] {
	line-color: @water;
	[type='river'],
	[type='canal'] {
		line-cap: round;
		line-join: round;
		[zoom=15]{ line-width: 4; }
		[zoom=16]{ line-width: 5; }
		[zoom=17]{ line-width: 6; }
		[zoom=18]{ line-width: 7; }
		[zoom=19]{ line-width: 8; }
		[zoom>19]{ line-width: 9; }
	}
	[type='stream'] {
		[zoom=15]{ line-width: 2.5; }
		[zoom=16]{ line-width: 3.0; }
		[zoom=17]{ line-width: 3.5; }
		[zoom=18]{ line-width: 4.0; }
		[zoom>18]{ line-width: 6.0; }
	}
	[type='ditch'],
	[type='drain'] {
		[zoom=15]{ line-width: 0.1; }
		[zoom=16]{ line-width: 0.3; }
		[zoom=17]{ line-width: 0.5; }
		[zoom=18]{ line-width: 0.7; }
		[zoom=19]{ line-width: 1; }
		[zoom>19]{ line-width: 1.5; }
	}
}



/* ================================================================== */
/* BUILDINGS
/* ================================================================== */

#buildings[zoom>=13] {
	polygon-fill:@building;
	[type='church'] {
		polygon-fill: @building*0.85;
	}
	[zoom>=14] {
		line-color:darken(@building, 10%);
		line-width: 0.2;
	}
	[zoom>=16] {
		line-color:darken(@building, 20%);
		line-width: 0.4;
	}
	[zoom>=18] {
		line-color:darken(@building, 40%);
		line-width: 0.6;
	}
}


