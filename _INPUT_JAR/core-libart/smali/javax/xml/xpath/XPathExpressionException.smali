.class public Ljavax/xml/xpath/XPathExpressionException;
.super Ljavax/xml/xpath/XPathException;
.source "XPathExpressionException.java"


# static fields
.field private static final serialVersionUID:J = -0x197e9ec3778880e4L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljavax/xml/xpath/XPathException;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Ljavax/xml/xpath/XPathException;-><init>(Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method
