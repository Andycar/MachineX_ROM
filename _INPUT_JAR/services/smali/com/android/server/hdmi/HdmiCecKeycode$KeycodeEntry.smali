.class Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;
.super Ljava/lang/Object;
.source "HdmiCecKeycode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecKeycode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeycodeEntry"
.end annotation


# instance fields
.field private final mAndroidKeycode:I

.field private final mCecKeycode:I

.field private final mIsRepeatable:Z


# direct methods
.method private constructor <init>(II)V
    .registers 4
    .param p1, "androidKeycode"    # I
    .param p2, "cecKeycode"    # I

    .prologue
    .line 186
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ)V

    .line 187
    return-void
.end method

.method synthetic constructor <init>(IILcom/android/server/hdmi/HdmiCecKeycode$1;)V
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/server/hdmi/HdmiCecKeycode$1;

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    return-void
.end method

.method private constructor <init>(IIZ)V
    .registers 4
    .param p1, "androidKeycode"    # I
    .param p2, "cecKeycode"    # I
    .param p3, "isRepeatable"    # Z

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    .line 181
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycode:I

    .line 182
    iput-boolean p3, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mIsRepeatable:Z

    .line 183
    return-void
.end method

.method synthetic constructor <init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$1;)V
    .registers 5
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/android/server/hdmi/HdmiCecKeycode$1;

    .prologue
    .line 174
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;
    .param p1, "x1"    # I

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->toCecKeycodeIfMatched(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;
    .param p1, "x1"    # I

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->toAndroidKeycodeIfMatched(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;I)Ljava/lang/Boolean;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;
    .param p1, "x1"    # I

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->isRepeatableIfMatched(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private isRepeatableIfMatched(I)Ljava/lang/Boolean;
    .registers 3
    .param p1, "androidKeycode"    # I

    .prologue
    .line 206
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    if-ne v0, p1, :cond_b

    .line 207
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mIsRepeatable:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 209
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private toAndroidKeycodeIfMatched(I)I
    .registers 3
    .param p1, "cecKeycode"    # I

    .prologue
    .line 198
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycode:I

    if-ne p1, v0, :cond_7

    .line 199
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    .line 201
    :goto_6
    return v0

    :cond_7
    const/4 v0, -0x1

    goto :goto_6
.end method

.method private toCecKeycodeIfMatched(I)I
    .registers 3
    .param p1, "androidKeycode"    # I

    .prologue
    .line 190
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    if-ne v0, p1, :cond_7

    .line 191
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycode:I

    .line 193
    :goto_6
    return v0

    :cond_7
    const/4 v0, -0x1

    goto :goto_6
.end method
