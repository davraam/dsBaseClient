#-------------------------------------------------------------------------------
# Copyright (c) 2018-2021 University of Newcastle upon Tyne. All rights reserved.
#
# This program and the accompanying materials
# are made available under the terms of the GNU Public License v3.0.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#-------------------------------------------------------------------------------

#
# Set up
#

connect.studies.dataset.cnsim(list("LAB_TSC"))

#
# Tests
#

context("ds.lexis::arg::test errors")
test_that("lexis_erros", {
    expect_error(ds.lexis(), "Please provide the name of the column that holds the subject IDs!", fixed=TRUE)
})

#
# Done
#

disconnect.studies.dataset.cnsim()
