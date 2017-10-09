.class final Lcom/android/systemui/qs/QSEditPanel$TileRecord;
.super Ljava/lang/Object;
.source "QSEditPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSEditPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TileRecord"
.end annotation


# instance fields
.field contentDescText:Ljava/lang/String;

.field iconID:I

.field key:Ljava/lang/String;

.field label:Ljava/lang/String;

.field tile:Lcom/android/systemui/qs/QSTile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<*>;"
        }
    .end annotation
.end field

.field viewContainer:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSEditPanel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSEditPanel$1;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel$TileRecord;-><init>()V

    return-void
.end method
