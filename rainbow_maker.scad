// Rainbow Maker - prism holder
// A yoke that holds a triangular glass prism on two printed pins.
// The pins are at the balance point of the prism, so the prism stays
// at any angle. Turn it by hand to aim the rainbow.
// All units are mm.
//
// The frame has a smile-shaped rail and hangs on two suction cups.
// The middle is open so the frame does not shade the prism.
//
// Parts to print (part = "plate" puts them all on one bed):
//   1 x holder (frame with two arms)
//   2 x cap    (print hub down, toes up, no supports)
//   2 x pin    (prints on its side on a flat, no brim or supports)
//   1 x foot   (print disc down, no supports; presses into the back
//               of the rail so the frame cannot rock on the cups)
// You also need 2 mushroom-head suction cups. Measure yours
// and set the Suction cups values.

/* [What to show] */
part  = "assembly"; // [assembly, plate, holder, cap, pin, foot, small_parts, gauge, cup_gauge]

// Values you measure or adjust are in INCHES and end in _in.
// All other values are in mm.

/* [Prism] */
prism_side_in = 1.2267; // triangle face width. Measured faces: 1.235, 1.220 and
                        // 1.225 in. Their inscribed circle matches a 1.2267 in
                        // equilateral prism.
prism_len_in  = 2.0;    // prism length
fit        = 0.3;    // corner grip: gap between each prism face and the pocket wall (mm)

/* [Label] */
label      = "RAINBOW MAKER";  // set to "" for no label, or use a name
label_size = 4.5;

/* [Pins] */
pin_d      = 5;
pin_head_d = 10;
pin_head_h = 2.5;
pin_turn   = 0.4;  // extra room in the arm hole, so the pin turns
pin_press  = 0.0;  // extra room in the cap hole (0 = press fit)
pin_flat   = 0.6;  // flat on one side so the pin prints lying down

/* [Cap] */
wall         = 2.0;  // cap wall at the prism corners
pocket_depth = 4;    // how far the prism end goes into the cap
relief_r     = 1;    // corner relief so sharp glass edges seat fully
cap_floor    = 4;
cap_round    = 3.5;  // outside corner radius (the cap does not get bigger)
cap_edge_r   = 1.0;  // rounded rim
grip         = "frog"; // [frog, corner] frog toes hold the flat faces, or fingers wrap the corners
hub_d        = 12;   // center disc around the pin (the palm)
spoke_w      = 6;    // spoke width at the hub
toe_w        = 4.5;  // frog grip: toe width just before the pad
pad_w        = 11;   // frog grip: toe pad width along the face
pad_t        = 6;    // frog grip: toe pad thickness at its middle
pad_fillet   = 2;    // frog grip: fillet around the outer edge of each toe pad
frog_fit_in  = 0.0138; // frog grip: gap between each prism face and its toe pad
card_hold    = "pinch"; // [slot, pinch] how the card pad (the first pad) holds
                     // a paper card. slot: the card slips into a slit near the glass.
                     // pinch: the card sits between the glass and the pad.
card_room_in = 0.0162; // frog grip: slit width, or extra room at the glass for pinch.
                       // The card is 0.015 in.
slot_wall    = 1.0;  // frog grip: wall between the slit and the glass
pad_lead     = 0.6;  // frog grip: chamfer at the top of each pad's glass side
web_h        = 2.4;  // frog grip: height of the webbing between the toes
web_dip      = 6.5;  // frog grip: how close the web edge comes to the center
web_curve    = 8;    // frog grip: radius of the curved web edge
finger_len   = 7;    // corner grip: how far each finger reaches from its corner
spoke_fillet = 1.5;  // fillet where a spoke meets the hub or a grip

/* [Holder] */
base_t      = 5;
upright_t   = 5;    // arm thickness
root_w      = 26;   // arm width where it meets the frame
eye_d       = 16;   // arm width around the pin
cove_in     = 3;    // fillet between the arm and the frame, prism side
cove_out    = 4;    // fillet between the arm and the frame, outer side
boss_d      = 14;
boss_h      = 2.5;  // spacer on the inside of each arm
side_gap_in = -0.0106; // end play for prism + caps between the bosses. Below 0,
                       // the arms press the caps onto the prism. (0.05 in tighter
                       // than the 0.039 in end play of the first holder)
swing_clear = 3;    // room between the turning caps and the frame
edge_r      = 1.5;  // rounded top edges
foot_c      = 0.4;  // small chamfer on the bed side against elephant foot

/* [Window frame] */
smile_dip = 26;  // how low the middle of the rail goes, from the pivot
smile_w   = 9;   // rail width

/* [Fit gauge] */
// Three thin triangle rings with different gaps per face. Try the prism
// in each ring, with and without the card, then set frog_fit.
// Ring 1 has one notch, ring 2 has two notches, and so on.
gauge_fits = [0.4, 0.6, 0.8];

/* [Suction cups] */
cup_mount     = "snap"; // [snap, keyhole] snap: the head pops through a round hole
                        // and holds the cup. keyhole: slide the frame down.
snap_hole_in  = 0.320;  // snap: hole diameter. From the cup gauge: the 0.435 in
                        // cups go through a 0.32 in hole with some work.
snap_lip_in   = 0.008;  // snap: lip this much thinner than the gap under the head
cup_head_in   = 0.435;  // diameter of the mushroom head (the cups on hand)
cup_neck_in   = 0.28;   // diameter of the stem under the head
cup_gap_in    = 0.075;  // gap between the cup body and the head
                        // The new 30 mm cups: head 0.40, stem 0.24, gap 0.11 in.
window_gap_in = 0.20;   // frame back to glass when hung on the cups

/* [Cup gauge] */
// A flat plate with snap holes of several sizes. Push a cup through each
// hole. Hole 1 has one notch, hole 2 has two notches, and so on.
gauge_holes_in = [0.32, 0.34, 0.36, 0.38, 0.40];
gauge_lip_in   = 0.067;  // plate thickness: the cup's gap under the head - 0.008

/* [Foot] */
// One foot at the bottom of the rail. With the two cups, it makes three
// contact points, so the frame cannot rock.
foot_d       = 8;
foot_preload_in = 0.012; // extra foot height so it always presses on the glass
foot_h_in       = 0.19;  // foot disc height, without the peg (0 = window gap + preload)
foot_peg_d   = 5;
foot_hole    = 3;    // blind hole depth in the back of the rail

$fn = 64;

// ---- Derived values ----
IN           = 25.4;
prism_side   = prism_side_in * IN;
prism_len    = prism_len_in * IN;
frog_fit     = frog_fit_in * IN;
card_room    = card_room_in * IN;
side_gap     = side_gap_in * IN;
cup_head_d   = cup_head_in * IN;
cup_neck_d   = cup_neck_in * IN;
cup_neck_len = cup_gap_in * IN;
window_gap   = window_gap_in * IN;
foot_preload = foot_preload_in * IN;
foot_h       = foot_h_in > 0 ? foot_h_in * IN : window_gap + foot_preload;
pocket_side = prism_side + 2 * sqrt(3) * fit;  // moves each face out by fit
pocket_R    = pocket_side / sqrt(3);           // center to corner
cap_R       = pocket_R + relief_r + wall;      // prism corner + wall
cap_h       = cap_floor + pocket_depth;
pivot_z     = base_t + cap_R + swing_clear;
asm_len     = prism_len + 2 * cap_floor;       // outer faces of both caps
inner       = asm_len + side_gap + 2 * boss_h; // between arm inner faces
// The pin tip stops 0.5 mm before the prism.
pin_len     = upright_t + boss_h + cap_floor - 0.5;

key_big    = cup_head_d + 1;
key_travel = cup_head_d;
key_x      = inner / 2 + upright_t + cove_out + key_big / 2 + 1.5;
pad_r      = key_big / 2 + 4;

// Smile rail: a circle arc from pad to pad through the low point.
smile_xe = inner / 2 - 2;
smile_ye = -12;
smile_R  = (smile_xe * smile_xe + pow(smile_ye + smile_dip, 2)) / (2 * (smile_ye + smile_dip));
smile_yc = -smile_dip + smile_R;

echo(str("Pivot height: ", pivot_z, " mm"));
echo(str("Frame width: ", 2 * (key_x + pad_r), " mm, suction cups ",
         2 * key_x, " mm apart"));

// ---- Helpers ----
module tri2d(side) {
    R = side / sqrt(3);
    polygon([for (a = [0, 120, 240]) R * [cos(a), sin(a)]]);
}

// Extrude a 2D shape to height t. The top edge is rounded with radius r,
// and the bottom edge gets a small chamfer c.
module slab(t, r, c) {
    steps = 6;
    linear_extrude(c / 2 + 0.01) offset(r = -c) children();
    translate([0, 0, c / 2]) linear_extrude(c / 2 + 0.01) offset(r = -c / 2) children();
    translate([0, 0, c]) linear_extrude(t - c - r + 0.01) children();
    for (i = [0 : steps - 1]) {
        h = r * (i + 1) / steps;
        translate([0, 0, t - r + r * i / steps])
            linear_extrude(r / steps + 0.01) offset(r = -(r - sqrt(r * r - h * h))) children();
    }
}

// Approximate advance widths of Liberation Sans Bold, per 1000 em.
CAPS   = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
CAP_W  = [722, 722, 722, 722, 667, 611, 778, 722, 278, 556, 722, 611, 833,
          722, 778, 667, 778, 722, 667, 611, 722, 667, 944, 667, 667, 611];
function adv(c) =
    c == " " ? 278 :
    let (k = search(c, CAPS)) len(k) > 0 ? CAP_W[k[0]] :
    (c == "i" || c == "l" || c == "j") ? 278 :
    (c == "m" || c == "w") ? 889 : 611;
function sum_to(v, i) = i <= 0 ? 0 : v[i - 1] + sum_to(v, i - 1);

// Letters along a circle of radius R around the origin, centered at the
// bottom of the circle, reading left to right.
module label_arc(size, R) {
    em  = size / 0.72;
    cap = 0.95 * size;
    w   = [for (c = label) adv(c) / 1000 * em];
    tot = sum_to(w, len(w));
    for (i = [0 : len(label) - 1]) {
        s = sum_to(w, i) + w[i] / 2 - tot / 2;
        rotate(270 + s / R * 180 / PI) translate([R, 0]) rotate(90)
            translate([0, -cap / 2])
                linear_extrude(1)
                    text(label[i], size = size, font = "Liberation Sans:style=Bold",
                         halign = "center", valign = "baseline");
    }
}

// ---- Cap ----
module pocket2d() {
    tri2d(pocket_side);
    if (relief_r > 0)
        for (a = [0, 120, 240])
            translate(pocket_R * [cos(a), sin(a)]) circle(r = relief_r, $fn = 24);
}

// A triangle with round corners. The tip stays at cap_R, so the cap
// reaches as far as a cap with small corners. A bigger corner radius
// makes the sides thicker, and the wall at the prism corners stays at wall.
module cap_outline2d() {
    rc = max(cap_round, relief_r + wall);
    offset(r = rc) tri2d(sqrt(3) * (cap_R - rc));
}

// Hub and spoke: a hub around the pin and three spokes.
// grip = "frog": like a tree frog foot. Each toe ends in a round pad
// that is flat on the glass side and holds the middle of one face. The
// glass corners stay open.
// grip = "corner": a V-shaped finger at each corner wraps the prism edge.

r_in   = pocket_side / (2 * sqrt(3));                 // center to a pocket face
frog_r = prism_side / (2 * sqrt(3)) + frog_fit;  // center to a toe pad face
// Center to each toe pad face. The first pad (at 60 degrees) is the card pad.
function pad_face(k) = frog_r + (k == 0 && card_hold == "pinch" ? card_room : 0);

// Where the spokes go.
function grip_angles() = grip == "frog" ? [60, 180, 300] : [0, 120, 240];

// The part of the full outline near one corner.
module finger_blob2d(a) {
    intersection() {
        cap_outline2d();
        translate(pocket_R * [cos(a), sin(a)]) circle(r = finger_len);
    }
}

// A frog toe pad outside one face: half an oval, flat on the glass side.
module toe_pad2d(a) {
    rotate(a) offset(r = 0.8) offset(r = -0.8)
        intersection() {
            translate([r_in + 0.5, 0]) scale([pad_t + 0.5, pad_w / 2]) circle(r = 1, $fn = 96);
            translate([r_in, -50]) square([50, 100]);
        }
}

// The grip above the floor at one spoke.
module grip2d(a) {
    if (grip == "frog")
        toe_pad2d(a);
    else
        offset(r = 0.8) offset(r = -0.8)
            difference() {
                finger_blob2d(a);
                pocket2d();
            }
}

// The floor under the prism end: hub, spokes and grip bases.
module floor2d() {
    reach = grip == "frog" ? r_in + 1 : pocket_R - 3;
    tip_w = grip == "frog" ? toe_w : spoke_w;          // toes taper
    offset(r = 1) offset(r = -1)                        // round outside corners
        offset(r = -spoke_fillet) offset(r = spoke_fillet) {  // fillets
            circle(d = hub_d);
            for (a = grip_angles()) {
                hull() {
                    circle(d = spoke_w);
                    translate(reach * [cos(a), sin(a)]) circle(d = tip_w);
                }
                if (grip == "frog") toe_pad2d(a); else finger_blob2d(a);
            }
        }
}

// ---- Frog cap ----
// Built from half-ellipsoids so it looks soft, like a tree frog foot:
// a domed palm, toes that flare out of the palm and taper, and a round
// toe pad on each face. Everything is the top half of an ellipsoid, so
// every surface leans in as it rises and the cap prints without supports.
// The palm and toes are cut flat at cap_floor, where the prism end sits.

module ellipsoid(c, r) {
    translate(c) scale(r) sphere(r = 1, $fn = 48);
}

// A toe pad: an oval disc with a soft dome on top and a fillet around the
// bed-side edge. A ball of radius pad_fillet rolled over a smaller pad
// rounds every edge. The fillet is cut where it reaches 45 degrees at the
// bed, so the round edge prints without supports.
module toe_pad(c) {
    dome = 3;                      // height of the rounded top
    rf   = pad_fillet;
    z0   = rf * cos(45);           // the cut through the fillet sits at the bed
    translate(c) minkowski() {
        hull() {
            translate([0, 0, z0])
                scale([pad_t - rf, pad_w / 2 - rf, 1]) cylinder(r = 1, h = 0.01, $fn = 48);
            ellipsoid([0, 0, cap_h - dome], [pad_t - rf, pad_w / 2 - rf, dome - rf]);
        }
        sphere(r = rf, $fn = 24);
    }
}

// Webbing between the toes. Each web edge is a concave curve.
module web2d() {
    difference() {
        hull() for (a = grip_angles())
            translate(frog_r * [cos(a), sin(a)]) circle(r = toe_w / 2 + 0.5);
        for (a = [0, 120, 240])
            translate((web_dip + web_curve) * [cos(a), sin(a)]) circle(r = web_curve, $fn = 96);
    }
}

// The prism space: a triangle with its own distance to each face.
module frog_gap2d(extra = 0) {
    intersection_for (k = [0 : 2])
        rotate(60 + 120 * k) translate([-100, -100]) square([100 + pad_face(k) + extra, 200]);
}

module frog_cap() {
    palm_r = hub_d / 2;
    toe_h  = cap_floor + 1.5;
    difference() {
        intersection() {
            union() {
                ellipsoid([0, 0, 0], [palm_r, palm_r, cap_floor + 2]);
                slab(web_h, 1, foot_c) web2d();
                for (k = [0 : 2]) rotate(60 + 120 * k) {
                    hull() {   // toe, wide where it leaves the palm
                        ellipsoid([palm_r * 0.35, 0, 0], [palm_r * 0.55, spoke_w / 2 + 1, toe_h]);
                        ellipsoid([pad_face(k), 0, 0], [toe_w / 2, toe_w / 2, toe_h]);
                    }
                    toe_pad([pad_face(k), 0, 0]);
                }
            }
            translate([-50, -50, 0]) cube([100, 100, 50]);  // keep the part above the bed
        }
        translate([0, 0, cap_floor]) linear_extrude(cap_h + 5) frog_gap2d();  // the prism
        hull() {   // lead-in at the top of each pad
            translate([0, 0, cap_h - pad_lead]) linear_extrude(0.01) frog_gap2d();
            translate([0, 0, cap_h + 0.01]) linear_extrude(0.01) frog_gap2d(pad_lead);
        }
        // Slit for the card, across the full width of the card pad, with a
        // small flare at the top to guide the card in.
        if (card_hold == "slot") rotate(60) {
            x0 = pad_face(0) + slot_wall;
            translate([x0, -20, cap_floor - 1]) cube([card_room, 40, cap_h]);
            hull() {
                translate([x0, -20, cap_h - 0.8]) cube([card_room, 40, 0.01]);
                translate([x0 - 0.2, -20, cap_h + 0.01]) cube([card_room + 0.8, 40, 0.01]);
            }
        }
        translate([0, 0, -1]) cylinder(d = pin_d + pin_press, h = cap_h + 2);
    }
}

// Floor on the bed, grips up.
module cap() {
    if (grip == "frog") frog_cap(); else corner_cap();
}

module corner_cap() {
    difference() {
        union() {
            slab(cap_floor, 0.8, foot_c) floor2d();
            for (a = grip_angles()) slab(cap_h, cap_edge_r, foot_c) grip2d(a);
        }
        translate([0, 0, -1]) cylinder(d = pin_d + pin_press, h = cap_h + 2);
    }
}

// ---- Fit gauge ----
module fit_gauge() {
    for (i = [0 : len(gauge_fits) - 1]) {
        side = prism_side + 2 * sqrt(3) * gauge_fits[i];
        R    = side / sqrt(3);
        translate([i * (side + 18), 0, 0]) difference() {
            slab(3, 0.6, foot_c) offset(r = 5) tri2d(side);
            translate([0, 0, -1]) linear_extrude(5) {
                tri2d(side);
                // Open corners, so only the faces touch, like the toe pads.
                for (a = [0, 120, 240]) translate(R * [cos(a), sin(a)]) circle(r = 2);
            }
            // Notches on the outside of the face opposite the first corner.
            for (n = [0 : i])
                translate([-(side / (2 * sqrt(3)) + 5), (n - i / 2) * 3, -1])
                    cylinder(r = 0.9, h = 5, $fn = 16);
        }
    }
}

// ---- Cup gauge ----
module cup_gauge() {
    n    = len(gauge_holes_in);
    step = 0.8 * IN;
    t    = gauge_lip_in * IN;
    difference() {
        translate([-step / 2, -0.4 * IN, 0]) linear_extrude(t)
            translate([4, 4]) offset(r = 4) square([n * step - 8, 0.8 * IN - 8]);
        for (i = [0 : n - 1]) translate([i * step, 0, 0]) {
            d = gauge_holes_in[i] * IN;
            translate([0, 0, -1]) cylinder(d = d, h = t + 2);
            translate([0, 0, -0.01]) cylinder(d1 = d + 1.6, d2 = d, h = 0.8);  // lead-in
            for (k = [0 : i])   // notches on the edge
                translate([(k - i / 2) * 2.5, -0.4 * IN, -1]) cylinder(r = 0.8, h = t + 2, $fn = 16);
        }
    }
}

// ---- Pin ----
// The flat along one side lets the pin print lying down. Then the
// layers run along the pin, and it does not snap at the head.
module pin() {
    c = pin_d / 2 - pin_flat;
    difference() {
        union() {
            cylinder(d = pin_head_d, h = pin_head_h);
            translate([0, 0, pin_head_h]) {
                cylinder(d = pin_d, h = pin_len - 0.5);
                translate([0, 0, pin_len - 0.5]) cylinder(d1 = pin_d, d2 = pin_d - 1, h = 0.5);
            }
        }
        translate([-50, -50 - c, -1]) cube([100, 50, 100]);
    }
}

// The pin on its flat, ready to print.
module pin_print() {
    translate([0, 0, pin_d / 2 - pin_flat]) rotate([90, 0, 0]) pin();
}

// ---- Arm ----
// Seen from the side, the arm sweeps from a wide root to a round eye.
module arm_side2d() {
    N  = 24;
    rw = root_w / 2;
    e  = eye_d / 2;
    fl = [for (i = [0 : N]) let (t = i / N)
            [e + (rw - e) * pow(1 - t, 2), base_t + t * (pivot_z - base_t)]];
    polygon(concat([[-rw, 0], [rw, 0]], fl,
                   [for (i = [N : -1 : 0]) [-fl[i][0], fl[i][1]]]));
    translate([0, pivot_z]) circle(d = eye_d);
}

// Seen from the front, the arm has a fillet into the frame on each side.
// x = 0 is the inner face.
module arm_front2d() {
    square([upright_t, pivot_z + eye_d]);
    difference() {
        translate([-cove_in, 0]) square([cove_in + 0.01, base_t + cove_in]);
        translate([-cove_in, base_t + cove_in]) circle(r = cove_in);
    }
    difference() {
        translate([upright_t - 0.01, 0]) square([cove_out + 0.01, base_t + cove_out]);
        translate([upright_t + cove_out, base_t + cove_out]) circle(r = cove_out);
    }
}

// One arm. Local x = 0 is the inner face, the boss points to -x.
module arm() {
    difference() {
        union() {
            intersection() {
                translate([-cove_in - 1, 0, 0]) rotate([90, 0, 90])
                    linear_extrude(upright_t + cove_in + cove_out + 2) arm_side2d();
                rotate([90, 0, 0]) linear_extrude(root_w + 2, center = true) arm_front2d();
            }
            translate([0, 0, pivot_z]) rotate([0, -90, 0])
                cylinder(d = boss_d, h = boss_h);
        }
        translate([-boss_h - 1, 0, pivot_z]) rotate([0, 90, 0])
            cylinder(d = pin_d + pin_turn, h = upright_t + boss_h + 2);
    }
}

module arms() {
    translate([inner / 2, 0, 0]) arm();
    mirror([1, 0, 0]) translate([inner / 2, 0, 0]) arm();
}

// ---- Window frame ----
// Snap hole for a mushroom-head suction cup. The z = 0 side goes on the
// glass. Push the head through from the glass side. The hole is slightly
// smaller than the neck, so the rubber neck is squeezed and holds.
module snap_hole() {
    lip  = (cup_gap_in - snap_lip_in) * IN;
    hole = snap_hole_in * IN;
    translate([0, 0, -1]) cylinder(d = hole, h = 50);
    translate([0, 0, lip]) cylinder(d = key_big, h = 50);             // recess for the head
    translate([0, 0, -0.01]) cylinder(d1 = hole + 1.6, d2 = hole, h = 0.8);  // lead-in
}

// Keyhole for a mushroom-head suction cup. The z = 0 side goes on the
// glass. Put the head through the round hole, then slide the frame down.
module keyhole() {
    neck = cup_neck_d + 0.5;
    lip  = cup_neck_len - 0.4;
    translate([0, -key_travel / 2, -1]) cylinder(d = key_big, h = 50);
    hull() for (y = [-key_travel / 2, key_travel / 2])
        translate([0, y, -1]) cylinder(d = neck, h = 50);
    hull() for (y = [-key_travel / 2, key_travel / 2])
        translate([0, y, lip]) cylinder(d = key_big, h = 50);
}

module pad2d() {
    hull() {
        if (cup_mount == "snap")
            translate([key_x, 0]) circle(r = key_big / 2 + 3);
        else
            for (y = [-key_travel / 2, key_travel / 2]) translate([key_x, y]) circle(r = pad_r);
        translate([inner / 2 - cove_in - 1, -root_w / 2 - 2])
            square([upright_t + cove_in + cove_out + 2, root_w + 4]);
    }
}

module smile2d() {
    intersection() {
        translate([0, smile_yc]) difference() {
            circle(r = smile_R + smile_w / 2, $fn = 180);
            circle(r = smile_R - smile_w / 2, $fn = 180);
        }
        translate([-inner / 2, -200]) square([inner, 200]);
    }
}

// Pads and rail as one smooth outline. +y is up on the window.
module frame2d() {
    offset(r = 3) offset(r = -3)
        offset(r = -6) offset(r = 6) {
            pad2d();
            mirror([1, 0]) pad2d();
            smile2d();
        }
}

module window_frame() {
    difference() {
        slab(base_t, edge_r, foot_c) frame2d();
        if (label != "")
            translate([0, smile_yc, base_t - 0.8]) label_arc(label_size, smile_R);
        // Blind hole for the foot. It opens on the glass side and does not
        // reach the label.
        translate([0, -smile_dip, -1]) cylinder(d = foot_peg_d, h = foot_hole + 1);
    }
}

// ---- Foot ----
// Disc down on the bed. The flat bed side touches the glass.
module foot() {
    h = foot_h;
    peg = foot_hole - 0.3;
    slab(h, 1, foot_c) circle(d = foot_d);
    translate([0, 0, h - 0.01]) {
        cylinder(d = foot_peg_d, h = peg - 0.5 + 0.01);
        translate([0, 0, peg - 0.5]) cylinder(d1 = foot_peg_d, d2 = foot_peg_d - 1, h = 0.5);
    }
}

// ---- Holder ----
module holder() {
    difference() {
        union() {
            window_frame();
            arms();
        }
        for (m = [0, 1]) mirror([m, 0, 0]) translate([key_x, 0, 0])
            if (cup_mount == "snap") snap_hole(); else keyhole();
    }
}

module prism() {
    color("lightblue", 0.5)
        rotate([0, -90, 0]) linear_extrude(prism_len, center = true) tri2d(prism_side);
}

// ---- Layouts ----
module assembled() {
    color("white") holder();
    translate([0, 0, pivot_z]) {
        prism();
        for (m = [0, 1]) mirror([m, 0, 0]) {
            translate([asm_len / 2, 0, 0]) rotate([0, -90, 0]) color("gold") cap();
            translate([inner / 2 + upright_t + pin_head_h, 0, 0])
                rotate([0, -90, 0]) color("orange") pin();
        }
    }
}

// Stand the frame up on a window pane.
module assembly() {
    rotate([90, 0, 0]) {
        assembled();
        color("lightcyan", 0.25)
            translate([-90, -70, -window_gap - 3]) cube([180, 140, 3]);
        color("orange") translate([0, -smile_dip, -foot_h]) foot();
    }
}

module plate() {
    lo = smile_dip + smile_w / 2;
    hi = root_w / 2 + 2;
    holder();
    for (i = [0, 1])
        translate([(i - 0.5) * (2 * cap_R + 6), hi + cap_R + 8, 0]) cap();
    for (i = [0, 1])
        translate([(i - 0.5) * (pin_head_d + 6), -(lo + 8), 0]) pin_print();
    translate([pin_head_d + 6 + foot_d / 2, -(lo + 8 + foot_d / 2), 0]) foot();
}

if      (part == "assembly") assembly();
else if (part == "plate")    plate();
else if (part == "holder")   holder();
else if (part == "cap")      cap();
else if (part == "pin")      pin_print();
else if (part == "foot")     foot();
else if (part == "small_parts") {   // one foot and two pins on one bed
    foot();
    for (i = [0, 1]) translate([foot_d / 2 + 6 + i * (pin_head_d + 4), 0, 0]) pin_print();
}
else if (part == "gauge")    fit_gauge();
else if (part == "cup_gauge") cup_gauge();
