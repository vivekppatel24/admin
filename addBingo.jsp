<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="list" value="${sessionScope.ls1 }"></c:set>
<c:set var="len" value="${function:length(list) }"></c:set>

[
<c:forEach items="${sessionScope.ls1 }" var="i" varStatus="j">{"loginId":"${i.loginVO.logId}","answerId":"${i.answerId}","bingoCount":"${i.bingoCount}","dingoCount":"${i.dingoCount }"}
<c:if test="${len ne j.count }">,</c:if>
</c:forEach>
]

