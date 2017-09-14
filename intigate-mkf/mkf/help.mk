
#
# Copyright © 2005-2010 Instigate CJSC, Armenia
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
# Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, write to the Free
# Software Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
#

.PHONY: help
help::
	@$(echo) ""
	@$(echo) "Usage: make [options] ..."
	@$(echo) "    - builds the project in case if no option is specified"
	@$(echo) "Options:"
	@$(echo) "  help"
	@$(echo) "    - displays the descriptions for the common targets"
	@$(echo) ""
	@$(echo) "  setup [link_type=(static|dynamic)]" 
	@$(echo) "        [build_type=(debug|release)]"
	@$(echo) "        [use_sdk=(yes|no)]"
	@$(echo) "        [use_gcov=(yes|no)]"
	@$(echo) "    - setup the following build options:"
	@$(echo) "      'link_type', 'build_type', 'use_sdk' and 'use_gcov' " \
	             "which default values are"
	@$(echo) "      'dynamic', 'debug' and 'no', respectively"
	@$(echo) ""
	@$(echo) "  test [test_type=<test-type>]"
	@$(echo) "    - runs the specified tests, by defaul the" \
	             		"continuous_tests are run"
	@$(echo) "    The following tests are supported:"
	@$(echo) "	  - acceptance_tests"
	@$(echo) "	  - regression_tests"
	@$(echo) " 	  - continuous_tests"
	@$(echo) " 	  - nightly_tests"
	@$(echo) " 	  - weekly_tests"
	@$(echo) ""
	@$(echo) "  all"
	@$(echo) "    - builds the project, generates all the available" \
		     "documentation"
	@$(echo) ""
	@$(echo) "  install [prefix=<path>]"	
	@$(echo) "    - installs the project into specified path. If no path" \
	      "is specified,"
	@$(echo) "      installs the project in the /opt/instigate/os3/1.0 path."
	@$(echo) ""
	@$(echo) "  docs"
	@$(echo) "    - generates the documentation"
	@$(echo) ""
	@$(echo)  "  developer_docs"
	@$(echo)  "    - generates the documentation from the source files" \
	              "using GNU doxygen tool "
	@$(echo)  "      in the doc/ directory"
	@$(echo) ""
	@$(echo) "  user_docs"
	@$(echo) "    - generates the user's documentation"
	@$(echo) ""
	@$(echo) "  clean_test"
	@$(echo) "    - cleans test result files"
	@$(echo) ""
	@$(echo) "  clean_docs"	
	@$(echo) "    - cleans the generated documentation"
	@$(echo) ""
	@$(echo) "  clean_conf"	
	@$(echo) "    - cleans the pkg configuration files"
	@$(echo) ""
	@$(echo) "  clean"
	@$(echo) "    - cleans all generated files"
