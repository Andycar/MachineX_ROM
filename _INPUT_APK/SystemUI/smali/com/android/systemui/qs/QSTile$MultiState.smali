.class public Lcom/android/systemui/qs/QSTile$MultiState;
.super Lcom/android/systemui/qs/QSTile$State;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiState"
.end annotation


# static fields
.field public static final DIM:I = 0x3

.field public static final EXTRA1:I = 0x4

.field public static final EXTRA2:I = 0x5

.field public static final EXTRA3:I = 0x6

.field public static final EXTRA4:I = 0x7

.field public static final EXTRA5:I = 0x8

.field public static final EXTRA6:I = 0x9

.field public static final EXTRA7:I = 0xa

.field public static final EXTRA8:I = 0xb

.field public static final OFF:I = 0x2

.field public static final ON:I = 0x1


# instance fields
.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTile$State;-><init>()V

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/android/systemui/qs/QSTile$State;)Z
    .locals 4
    .param p1, "other"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 565
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    .line 566
    .local v1, "o":Lcom/android/systemui/qs/QSTile$MultiState;
    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTile$State;->copyTo(Lcom/android/systemui/qs/QSTile$State;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    iget v3, p0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v2, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 567
    .local v0, "changed":Z
    :goto_0
    iget v2, p0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 568
    return v0

    .line 566
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 573
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile$State;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 574
    .local v0, "rt":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    return-object v0
.end method
