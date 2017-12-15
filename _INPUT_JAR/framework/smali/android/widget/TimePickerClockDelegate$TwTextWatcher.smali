.class public Landroid/widget/TimePickerClockDelegate$TwTextWatcher;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwTextWatcher"
.end annotation


# instance fields
.field private mId:I

.field private mMaxLen:I

.field private mNext:I

.field private prevText:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method public constructor <init>(Landroid/widget/TimePickerClockDelegate;II)V
    .registers 6
    .param p2, "maxLen"    # I
    .param p3, "id"    # I

    .prologue
    .line 974
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 975
    iput p2, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->mMaxLen:I

    .line 976
    iput p3, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->mId:I

    .line 978
    iget v0, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_14

    const/4 v0, -0x1

    :goto_11
    iput v0, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->mNext:I

    .line 979
    return-void

    .line 978
    :cond_14
    iget v0, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method private changeFocus()V
    .registers 5

    .prologue
    .line 1010
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v2, v2, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 1011
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1024
    :cond_e
    :goto_e
    return-void

    .line 1015
    :cond_f
    iget v2, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->mId:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v1, v2, 0x2

    .line 1017
    .local v1, "next":I
    iget v2, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->mNext:I

    if-ltz v2, :cond_e

    .line 1018
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/TimePickerClockDelegate;->access$1200(Landroid/widget/TimePickerClockDelegate;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->mNext:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1020
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/TimePickerClockDelegate;->access$1200(Landroid/widget/TimePickerClockDelegate;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->mId:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1021
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/TimePickerClockDelegate;->access$1200(Landroid/widget/TimePickerClockDelegate;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->mId:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_e
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5
    .param p1, "view"    # Landroid/text/Editable;

    .prologue
    .line 982
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->TW_DEBUG:Z
    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->access$1100(Landroid/widget/TimePickerClockDelegate;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "Picker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aftertextchanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_24
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 986
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->TW_DEBUG:Z
    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->access$1100(Landroid/widget/TimePickerClockDelegate;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "Picker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beforeTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_3e
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->prevText:Ljava/lang/String;

    .line 988
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 991
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->TW_DEBUG:Z
    invoke-static {v1}, Landroid/widget/TimePickerClockDelegate;->access$1100(Landroid/widget/TimePickerClockDelegate;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "Picker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTextChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_23
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->TW_DEBUG:Z
    invoke-static {v1}, Landroid/widget/TimePickerClockDelegate;->access$1100(Landroid/widget/TimePickerClockDelegate;)Z

    move-result v1

    if-eqz v1, :cond_62

    const-string v1, "Picker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTextChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :cond_62
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/TimePickerClockDelegate;->access$1200(Landroid/widget/TimePickerClockDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 995
    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_96

    .line 996
    const-string/jumbo v1, "onClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_86

    const-string/jumbo v1, "onLongClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 997
    :cond_86
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/TimePickerClockDelegate;->access$1200(Landroid/widget/TimePickerClockDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1007
    :cond_95
    :goto_95
    return-void

    .line 1002
    :cond_96
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_95

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->mMaxLen:I

    if-ne v1, v2, :cond_95

    .line 1003
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/TimePickerClockDelegate;->access$1200(Landroid/widget/TimePickerClockDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 1004
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate$TwTextWatcher;->changeFocus()V

    goto :goto_95
.end method
