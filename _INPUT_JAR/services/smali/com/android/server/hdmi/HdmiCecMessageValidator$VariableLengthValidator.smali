.class Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecMessageValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariableLengthValidator"
.end annotation


# instance fields
.field private final mMaxLength:I

.field private final mMinLength:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "minLength"    # I
    .param p2, "maxLength"    # I

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;->mMinLength:I

    .line 242
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;->mMaxLength:I

    .line 243
    return-void
.end method


# virtual methods
.method public isValid([B)Z
    .registers 4
    .param p1, "params"    # [B

    .prologue
    .line 247
    array-length v0, p1

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;->mMinLength:I

    if-lt v0, v1, :cond_c

    array-length v0, p1

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;->mMaxLength:I

    if-gt v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
