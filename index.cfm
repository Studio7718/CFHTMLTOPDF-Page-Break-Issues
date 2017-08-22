<cfhtmltopdf orientation="portrait" overwrite="true" pageType="letter" marginBottom=".5" marginLeft=".3" marginRight=".5">
	<!--- Load jQuery for use by js version of page-break fix --->
	<!--- Trying to load non local js fails to load :( --->
	<!--- <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script> --->
	<!--- Have to load it locally --->
	<script type="text/javascript" src="/inc/js/jquery-1.11.0.min.js"></script>
	<!--- Some CSS to help with example visually --->
	<style media="all" type="text/css">
		@page {
			size: 8.5in 11in;
			margin: .5in .5in .5in .5in;
		}
		h3 {
			padding: 0; margin: 0;
		}
		table {
			margin: 0;
			padding: 0;
			width: 100%;
		}
		.panel {
			background-color: black;
			border: 1px blue solid;
			color: white;
		}
		.panel {
			/* This is the css that does not work and would allow us to solve the issues */
			page-break-inside: avoid;
		}
		.panel .panel-heading {
			background-color: #333;
			padding: .5em;
		}
		.panel .panel-body {
			padding: .5em;
		}
		.breakRule {
			background-color: blue;
		}
		.breakRule2 {
			background-color: red;
		}
	</style>
	<!--- Footer for each page --->
	<cfhtmltopdfitem type="footer" showonprint="true" evalAtPrint="true">
		<span>
			<p>Page-Break Issue Test</p><br/>
			<cfoutput><p>Page #cfhtmltopdf.currentPageNumber# of #cfhtmltopdf.totalPageCount#</p></cfoutput>
		</span>
	</cfhtmltopdfitem>
	<!--- Start pages --->
	<h2 class="sectionHeader">Section 1</h2>
	<div class="panel hci">
		<div class="panel-heading">
			<h3 class="panel-title">Content 1</h3>
		</div>
		<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore. <br /> <br /> <br /> <br /> <br /> <br /> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.<br /> <br /> <br /> <br /> <br /> <br /> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.<br /> <br /> <br /> <br /> <br /> <br /> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.</div>
	</div>
	<h2 class="sectionHeader">Section 2</h2>
	<div class="panel hci">
		<div class="panel-heading">
			<h3 class="panel-title">Content 2</h3>
		</div>
		<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.</div>
	</div>
	<h2 class="sectionHeader">Section 3</h2>
	<table>
<!--- NOTE: Can't use page break with tr which would be nice since left or right column could be longer than other, so we add class to first panel of each row for the height calculation --->
		<!--- <tr class="hci"> --->
		<tr class="">
			<td width="50%">
				<div class="panel hci">
					<div class="panel-heading">
						<h3 class="panel-title">Content 3.1</h3>
					</div>
					<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.</div>
				</div>
			</td>
			<td>
				<div class="panel ">
					<div class="panel-heading">
						<h3 class="panel-title">Content 3.2</h3>
					</div>
					<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.</div>
				</div>
			</td>
		</tr>
		<tr class="">
			<td width="50%">
				<div class="panel hci">
					<div class="panel-heading">
						<h3 class="panel-title">Content 3.3</h3>
					</div>
					<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.</div>
				</div>
			</td>
			<td>
				<div class="panel ">
					<div class="panel-heading">
						<h3 class="panel-title">Content 3.4</h3>
					</div>
					<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.</div>
				</div>
			</td>
		</tr>
		<tr class="">
			<td width="50%">
				<div class="panel hci">
					<div class="panel-heading">
						<h3 class="panel-title">Content 3.5</h3>
					</div>
					<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.</div>
				</div>
			</td>
			<td>
				<div class="panel ">
					<div class="panel-heading">
						<h3 class="panel-title">Content 3.6</h3>
					</div>
					<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.</div>
				</div>
			</td>
		</tr>
		<tr class="">
			<td width="50%">
				<div class="panel hci">
					<div class="panel-heading">
						<h3 class="panel-title">Content 3.7</h3>
					</div>
					<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.</div>
				</div>
			</td>
			<td>
				<div class="panel hci">
					<div class="panel-heading">
						<h3 class="panel-title">Content 3.8</h3>
					</div>
					<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.</div>
				</div>
			</td>
		</tr>
	</table>
	<h2 class="sectionHeader">Section 4</h2>
	<div class="panel hci">
		<div class="panel-heading">
			<h3 class="panel-title">Content 4</h3>
		</div>
		<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore. <br /> <br /> <br /> <br /> <br /> <br /> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.<br /> <br /> <br /> <br /> <br /> <br /> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.<br /> <br /> <br /> <br /> <br /> <br /> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.</div>
	</div>
	<h2 class="sectionHeader">Section 5</h2>
	<div class="panel hci">
		<div class="panel-heading">
			<h3 class="panel-title">Content 5.1</h3>
		</div>
		<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.</div>
	</div>
	<div class="panel hci">
		<div class="panel-heading">
			<h3 class="panel-title">Content 5.2</h3>
		</div>
		<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.</div>
	</div>
	<div class="panel hci">
		<div class="panel-heading">
			<h3 class="panel-title">Content 5.3</h3>
		</div>
		<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.</div>
	</div>
	<div class="panel hci">
		<div class="panel-heading">
			<h3 class="panel-title">Content 5.4</h3>
		</div>
		<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.</div>
	</div>
	<div class="panel hci">
		<div class="panel-heading">
			<h3 class="panel-title">Content 5.5</h3>
		</div>
		<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.</div>
	</div>
	<div class="panel hci">
		<div class="panel-heading">
			<h3 class="panel-title">Content 5.6</h3>
		</div>
		<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.</div>
	</div>
	<div class="panel hci">
		<div class="panel-heading">
			<h3 class="panel-title">Content 5.7</h3>
		</div>
		<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt corporis, alias voluptatum. Voluptas perspiciatis debitis minima! Alias, illo praesentium fugit eligendi laudantium temporibus magnam assumenda ipsa, error dignissimos aspernatur, tempore.</div>
	</div>
<!--- NOTE: This was an attempt to use js to determine when a page break would be needed. around section 3.6 you should see duplicated content, seems like js was not done when pdf went to render based on this and other examples i have seen with longer more complecated pages, tried a few things to get render to wait until done with no luck. May also be related to tables.

Set to true to run this js, this solution solves the problem except when it duplicates content which is a worse situation
  --->
<cfif true>
	<script type="text/javascript">
		// tried this to stop ready event, does not help as far as i can see
		//$.holdReady(true);
		var pv = {
			ph:960, // Height of page, height is smaller than page to handle edge cases
			hg:192, // Header gutter clearance, to keep a section header from being abandonded from it's content
			tch:0, // Total Calculated Height, currently only used for reference
			cch:0 // Current Calculated Height
		};
		$('.sectionHeader, .hci').each(function() {
			var my = $(this);
			var isSection = 0;
			if ( my.is('.sectionHeader') ) {
				isSection = 1;
			}
			var h = my.outerHeight();
			// Add current element height to current calculated height, this value gets reset each page
			pv.cch += h;
			// Add current element height to total calculated height, this is all element heights so far
			pv.tch += h;
			// Check if current element is longer than the page, reset counter to remainder from page as it will break on its own
			if ( h >= pv.ph ) {
				pv.cch = h-pv.ph;
			// If current element is a section header and it is close to bottom of page or the header will be seperate from first batch of content
			} else if ( isSection && ( pv.cch >= ( pv.ph - pv.hg ) ) ) {
				my.before('<div style="page-break-before:always;"></div>').addClass('breakRule').append(' (Keep header with content)');
				// This was an alternate way of placing a page break
				//my.css('pageBreakBefore','always').addClass('breakRule').append(' (Keep header with content)');
				pv.cch = h;
			// The current element will be broken on page, add page break and reset counter
			} else if (pv.cch >= pv.ph) {
				my.before('<div style="page-break-before:always;"></div>').addClass('breakRule2').append(' (do not break content)');
				// This was an alternate way of placing a page break
				//my.css('pageBreakBefore','always').addClass('breakRule2');
				pv.cch = h;
			}
			// Used to place count in UI for debugging
			//my.append(' #' + pv.cch);
		});
		// This is what would have set document ready
		//$.holdReady(false);
	</script>
</cfif>
</cfhtmltopdf>