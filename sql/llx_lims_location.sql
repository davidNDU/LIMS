-- ========================================================================
-- Copyright (C) 2021           David Bensel      <david.bensel@gmail.com>
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 2 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program. If not, see <https://www.gnu.org/licenses/>.
--
-- ========================================================================
CREATE TABLE llx_lims_location(
	rowid integer AUTO_INCREMENT PRIMARY KEY,
	code varchar(3),
	label varchar(50),
	short_label varchar(10),
	active tinyint DEFAULT 1 NOT NULL
)ENGINE=innodb;

ALTER TABLE llx_lims_location ADD UNIQUE uk_lims_units_code(code);

-- FOR TEST PURPOSE - MUST BE REMOVED!
INSERT INTO llx_lims_location (code, label, short_label, active) VALUES ('CUS', 'Sample at customer', 'Customer', 1);
INSERT INTO llx_lims_location (code, label, short_label, active) VALUES ('LAB', 'Sample at own laboratory', 'Laboratory', 1);
INSERT INTO llx_lims_location (code, label, short_label, active) VALUES ('FRE', 'Sample in freezer', 'Freezer', 1);
INSERT INTO llx_lims_location (code, label, short_label, active) VALUES ('DIS', 'Sample is disposed', 'Disposed', 1);