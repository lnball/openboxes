<div class="wizard-box">
	<div class="wizard-steps "> 
		<div class="${actionName.contains('create')||actionName.equals('show')||actionName.equals('editHeader')?'active-step':''}">
			<g:link controller="requisition" action="show" id="${requisition?.id}">
                <span class="step">1</span>
				<warehouse:message code="requisition.create.label" args="[warehouse.message(code:'enum.RequisitionType.' + requisition.type)]"/>
			</g:link>
		</div>
        <div class="${actionName.equals('edit')?'active-step':''}">
            <g:link controller="requisition" action="edit"  id="${requisition?.id}">
                <span class="step">2</span>
                <warehouse:message code="requisition.edit.label"/>
            </g:link>
        </div>
        <div class="${actionName.equals('review')||actionName.equals('change')?'active-step':''}">
            <g:link controller="requisition" action="review" id="${requisition?.id}">
                <span class="step">3</span>
                <warehouse:message code="requisition.review.label"/>
            </g:link>
        </div>
		<div class="${actionName.equals('pick')?'active-step':''}">
			<g:link controller="requisition" action="pick" id="${requisition?.id}">
                <span class="step">4</span>
				<warehouse:message code="requisition.pick.label"/>
			</g:link>
		</div>
		<div class="${actionName.equals('confirm')?'active-step':''}">
			<g:link controller="requisition" action="confirm" id="${requisition?.id}">
                <span class="step">5</span>
				<warehouse:message code="requisition.confirm.label"/>
			</g:link>
		</div>
		<div class="${actionName.equals('issue')?'active-step':''}">
			<g:link controller="requisition" action="issue" id="${requisition?.id}">
                <span class="step">6</span>
				<warehouse:message code="requisition.issue.label"/>
			</g:link>
		</div>
	</div>
</div>