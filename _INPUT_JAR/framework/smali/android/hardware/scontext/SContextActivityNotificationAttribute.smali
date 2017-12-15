.class public Landroid/hardware/scontext/SContextActivityNotificationAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextActivityNotificationAttribute.java"


# static fields
.field private static final ACTIVITY_STATUS_MAX:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SContextActivityNotificationAttribute"


# instance fields
.field private mActivityFilter:[I


# direct methods
.method constructor <init>()V
    .registers 4

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    .line 42
    invoke-direct {p0}, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->setAttribute()V

    .line 43
    return-void
.end method

.method public constructor <init>([I)V
    .registers 5
    .param p1, "activityFilter"    # [I

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    .line 63
    iput-object p1, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    .line 64
    invoke-direct {p0}, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->setAttribute()V

    .line 65
    return-void
.end method

.method private setAttribute()V
    .registers 4

    .prologue
    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v0, "attribute":Landroid/os/Bundle;
    const-string v1, "activity_filter"

    iget-object v2, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 91
    const/16 v1, 0x1b

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 92
    return-void
.end method


# virtual methods
.method checkAttribute()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v4, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    array-length v4, v4

    if-ge v0, v4, :cond_47

    .line 72
    iget-object v4, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    aget v4, v4, v0

    if-ltz v4, :cond_19

    iget-object v4, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    aget v4, v4, v0

    const/4 v5, 0x5

    if-le v4, v5, :cond_21

    .line 74
    :cond_19
    const-string v4, "SContextActivityNotificationAttribute"

    const-string v5, "The activity status is wrong."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_20
    return v3

    .line 77
    :cond_21
    iget-object v4, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2d
    if-ge v1, v0, :cond_44

    .line 79
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_41

    .line 80
    const-string v4, "SContextActivityNotificationAttribute"

    const-string v5, "This activity status cannot have duplicated status."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 78
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 71
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 85
    .end local v1    # "j":I
    :cond_47
    const/4 v3, 0x1

    goto :goto_20
.end method
