.class public Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;
.super Ljava/lang/Object;
.source "DozeParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/DozeParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PulseSchedule"
.end annotation


# static fields
.field private static final PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mSchedule:[I

.field private mSpec:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 133
    const-string v0, "(\\d+?)s"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;->mSpec:Ljava/lang/String;

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;
    .locals 9
    .param p0, "spec"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 139
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v3, v5

    .line 154
    :cond_0
    :goto_0
    return-object v3

    .line 141
    :cond_1
    :try_start_0
    new-instance v3, Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;-><init>()V

    .line 142
    .local v3, "rt":Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;
    iput-object p0, v3, Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;->mSpec:Ljava/lang/String;

    .line 143
    const-string v6, ","

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, "tokens":[Ljava/lang/String;
    array-length v6, v4

    new-array v6, v6, [I

    iput-object v6, v3, Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;->mSchedule:[I

    .line 145
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v4

    if-ge v1, v6, :cond_3

    .line 146
    sget-object v6, Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;->PATTERN:Ljava/util/regex/Pattern;

    aget-object v7, v4, v1

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 147
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad token: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v1    # "i":I
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "rt":Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;
    .end local v4    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v6, "DozeParameters"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parsing spec: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v5

    .line 154
    goto :goto_0

    .line 148
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "i":I
    .restart local v2    # "m":Ljava/util/regex/Matcher;
    .restart local v3    # "rt":Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;
    .restart local v4    # "tokens":[Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v6, v3, Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;->mSchedule:[I

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v1

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 150
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :cond_3
    invoke-static {}, Lcom/android/systemui/statusbar/phone/DozeParameters;->access$100()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "DozeParameters"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parsed spec ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] as: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public getNextTime(JJ)J
    .locals 7
    .param p1, "now"    # J
    .param p3, "notificationTime"    # J

    .prologue
    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;->mSchedule:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;->mSchedule:[I

    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    add-long v2, p3, v4

    .line 166
    .local v2, "time":J
    cmp-long v1, v2, p1

    if-lez v1, :cond_0

    .line 168
    .end local v2    # "time":J
    :goto_1
    return-wide v2

    .line 164
    .restart local v2    # "time":J
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    .end local v2    # "time":J
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;->mSchedule:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
