.class public Ljava/sql/DriverPropertyInfo;
.super Ljava/lang/Object;
.source "DriverPropertyInfo.java"


# instance fields
.field public choices:[Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public required:Z

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Ljava/sql/DriverPropertyInfo;->name:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Ljava/sql/DriverPropertyInfo;->value:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Ljava/sql/DriverPropertyInfo;->choices:[Ljava/lang/String;

    .line 70
    iput-object v0, p0, Ljava/sql/DriverPropertyInfo;->description:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/sql/DriverPropertyInfo;->required:Z

    .line 72
    return-void
.end method
