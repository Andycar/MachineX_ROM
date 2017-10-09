.class Lcom/android/systemui/power/PowerUI$Sales;
.super Ljava/lang/Object;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Sales"
.end annotation


# static fields
.field static final ATT:Z

.field static final SALES_CODE:Ljava/lang/String;

.field static final VZW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 224
    const-string v0, "ro.csc.sales_code"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/power/PowerUI$Sales;->SALES_CODE:Ljava/lang/String;

    .line 225
    const-string v0, "VZW"

    sget-object v1, Lcom/android/systemui/power/PowerUI$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    .line 226
    const-string v0, "ATT"

    sget-object v1, Lcom/android/systemui/power/PowerUI$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/power/PowerUI$Sales;->ATT:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
