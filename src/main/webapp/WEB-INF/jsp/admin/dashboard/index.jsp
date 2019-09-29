<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="t" tagdir="/WEB-INF/tags/layouts" %>

<t:master-admin title="Admin Dashboard">

<jsp:attribute name="content">

<jsp:include page="partials/navigation.jsp" />

</jsp:attribute>

<jsp:attribute name="javascript">
<script src="/js/common/chart.min.js"></script>
<script>
    $(document).ready(function(){
        var monthlyData = JSON.parse('{!! fixedJSON($dashboard["total_users_groupby_month"]) !!}');
        new Chart('chart-line', {
            type: 'line',
            data: {
                labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'June', 'July', 'Aug', 'Sept', 'Oct', 'Nov', 'Dec'],
                datasets: [{
                backgroundColor: 'rgba(255, 99, 132, 0.2)',
                borderColor: '#EC807A',
                data: Object.values(monthlyData)
                }]
            },
            options: {
                maintainAspectRatio: true,
                elements: {
                line: {
                    tension: 0.4,
                    "borderWidth": 2
                }
                },
                legend: {display: false},
                scales: {
                    yAxes: [{
                        ticks: {
                        fontColor: "#999999"
                        }
                    }],
                    xAxes: [{
                        ticks: {
                        fontColor: "#999999"
                        }
                    }]
                }
            }
        });
    });
</script>
</jsp:attribute>

</t:master-admin>
