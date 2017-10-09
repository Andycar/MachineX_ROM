.class Lcom/android/systemui/qs/QSEditPanel$MessageObject;
.super Ljava/lang/Object;
.source "QSEditPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSEditPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageObject"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field state:Lcom/android/systemui/qs/QSTile$State;

.field final synthetic this$0:Lcom/android/systemui/qs/QSEditPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p2, "x1"    # Lcom/android/systemui/qs/QSEditPanel$1;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel$MessageObject;-><init>(Lcom/android/systemui/qs/QSEditPanel;)V

    return-void
.end method
