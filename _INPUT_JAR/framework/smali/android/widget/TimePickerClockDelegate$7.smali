.class Landroid/widget/TimePickerClockDelegate$7;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePickerClockDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method constructor <init>(Landroid/widget/TimePickerClockDelegate;)V
    .registers 2

    .prologue
    .line 379
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$7;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextReceived(Ljava/lang/CharSequence;)V
    .registers 15
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 382
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "//"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 383
    .local v9, "numString":[Ljava/lang/String;
    array-length v11, v9

    const/4 v12, 0x2

    if-ge v11, v12, :cond_f

    .line 444
    :goto_e
    return-void

    .line 387
    :cond_f
    const/4 v2, -0x1

    .line 388
    .local v2, "hour":I
    const/4 v7, -0x1

    .line 389
    .local v7, "minute":I
    const/4 v1, 0x0

    .line 390
    .local v1, "existAmPm":Z
    const-string v10, ""

    .line 392
    .local v10, "tmpStr":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    array-length v11, v9

    if-ge v3, v11, :cond_c5

    .line 393
    aget-object v11, v9, v3

    if-eqz v11, :cond_31

    aget-object v11, v9, v3

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 394
    :goto_22
    if-nez v3, :cond_39

    .line 396
    :try_start_24
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_34

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_2d} :catch_36

    move-result v2

    .line 392
    :cond_2e
    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 393
    :cond_31
    const-string v10, ""

    goto :goto_22

    .line 396
    :cond_34
    const/4 v2, -0x1

    goto :goto_2e

    .line 397
    :catch_36
    move-exception v8

    .line 398
    .local v8, "nfe":Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    .line 399
    goto :goto_2e

    .line 400
    .end local v8    # "nfe":Ljava/lang/NumberFormatException;
    :cond_39
    const/4 v11, 0x1

    if-ne v3, v11, :cond_4c

    .line 402
    :try_start_3c
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_47

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_45} :catch_49

    move-result v7

    :goto_46
    goto :goto_2e

    :cond_47
    const/4 v7, -0x1

    goto :goto_46

    .line 403
    :catch_49
    move-exception v8

    .line 404
    .restart local v8    # "nfe":Ljava/lang/NumberFormatException;
    const/4 v7, -0x1

    .line 405
    goto :goto_2e

    .line 406
    .end local v8    # "nfe":Ljava/lang/NumberFormatException;
    :cond_4c
    const/4 v11, 0x2

    if-ne v3, v11, :cond_2e

    .line 407
    aget-object v11, v9, v3

    if-eqz v11, :cond_9a

    aget-object v11, v9, v3

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 408
    :goto_59
    const-string v11, ""

    if-eq v10, v11, :cond_5e

    .line 409
    const/4 v1, 0x1

    .line 412
    :cond_5e
    :try_start_5e
    iget-object v11, p0, Landroid/widget/TimePickerClockDelegate$7;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->mAmPmStrings:[Ljava/lang/String;
    invoke-static {v11}, Landroid/widget/TimePickerClockDelegate;->access$800(Landroid/widget/TimePickerClockDelegate;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v5, v11, v12

    .line 413
    .local v5, "initAM":Ljava/lang/String;
    iget-object v11, p0, Landroid/widget/TimePickerClockDelegate$7;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->mAmPmStrings:[Ljava/lang/String;
    invoke-static {v11}, Landroid/widget/TimePickerClockDelegate;->access$800(Landroid/widget/TimePickerClockDelegate;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v6, v11, v12

    .line 415
    .local v6, "initPM":Ljava/lang/String;
    if-eqz v1, :cond_9d

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_90

    const-string v11, "AM"

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9d

    .line 416
    :cond_90
    iget-object v11, p0, Landroid/widget/TimePickerClockDelegate$7;->this$0:Landroid/widget/TimePickerClockDelegate;

    const/4 v12, 0x1

    # setter for: Landroid/widget/TimePickerClockDelegate;->mIsAm:Z
    invoke-static {v11, v12}, Landroid/widget/TimePickerClockDelegate;->access$002(Landroid/widget/TimePickerClockDelegate;Z)Z
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_96} :catch_97

    goto :goto_2e

    .line 420
    .end local v5    # "initAM":Ljava/lang/String;
    .end local v6    # "initPM":Ljava/lang/String;
    :catch_97
    move-exception v0

    .line 421
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_2e

    .line 407
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9a
    const-string v10, ""

    goto :goto_59

    .line 417
    .restart local v5    # "initAM":Ljava/lang/String;
    .restart local v6    # "initPM":Ljava/lang/String;
    :cond_9d
    if-eqz v1, :cond_2e

    :try_start_9f
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_bd

    const-string v11, "PM"

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2e

    .line 418
    :cond_bd
    iget-object v11, p0, Landroid/widget/TimePickerClockDelegate$7;->this$0:Landroid/widget/TimePickerClockDelegate;

    const/4 v12, 0x0

    # setter for: Landroid/widget/TimePickerClockDelegate;->mIsAm:Z
    invoke-static {v11, v12}, Landroid/widget/TimePickerClockDelegate;->access$002(Landroid/widget/TimePickerClockDelegate;Z)Z
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_c3} :catch_97

    goto/16 :goto_2e

    .line 426
    .end local v5    # "initAM":Ljava/lang/String;
    .end local v6    # "initPM":Ljava/lang/String;
    :cond_c5
    if-ltz v2, :cond_d0

    .line 427
    iget-object v11, p0, Landroid/widget/TimePickerClockDelegate$7;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v11}, Landroid/widget/TimePickerClockDelegate;->access$400(Landroid/widget/TimePickerClockDelegate;)Landroid/widget/NumberPicker;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 430
    :cond_d0
    if-ltz v7, :cond_db

    .line 431
    iget-object v11, p0, Landroid/widget/TimePickerClockDelegate$7;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;
    invoke-static {v11}, Landroid/widget/TimePickerClockDelegate;->access$500(Landroid/widget/TimePickerClockDelegate;)Landroid/widget/NumberPicker;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 434
    :cond_db
    iget-object v11, p0, Landroid/widget/TimePickerClockDelegate$7;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-virtual {v11}, Landroid/widget/TimePickerClockDelegate;->is24HourView()Z

    move-result v11

    if-nez v11, :cond_ff

    if-eqz v1, :cond_ff

    .line 435
    iget-object v11, p0, Landroid/widget/TimePickerClockDelegate$7;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->mIsAm:Z
    invoke-static {v11}, Landroid/widget/TimePickerClockDelegate;->access$000(Landroid/widget/TimePickerClockDelegate;)Z

    move-result v11

    if-eqz v11, :cond_106

    const/4 v4, 0x0

    .line 436
    .local v4, "index":I
    :goto_ee
    iget-object v11, p0, Landroid/widget/TimePickerClockDelegate$7;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;
    invoke-static {v11}, Landroid/widget/TimePickerClockDelegate;->access$700(Landroid/widget/TimePickerClockDelegate;)Landroid/widget/NumberPicker;

    move-result-object v11

    if-eqz v11, :cond_108

    .line 437
    iget-object v11, p0, Landroid/widget/TimePickerClockDelegate$7;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;
    invoke-static {v11}, Landroid/widget/TimePickerClockDelegate;->access$700(Landroid/widget/TimePickerClockDelegate;)Landroid/widget/NumberPicker;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 443
    .end local v4    # "index":I
    :cond_ff
    :goto_ff
    iget-object v11, p0, Landroid/widget/TimePickerClockDelegate$7;->this$0:Landroid/widget/TimePickerClockDelegate;

    # invokes: Landroid/widget/TimePickerClockDelegate;->onTimeChanged()V
    invoke-static {v11}, Landroid/widget/TimePickerClockDelegate;->access$200(Landroid/widget/TimePickerClockDelegate;)V

    goto/16 :goto_e

    .line 435
    :cond_106
    const/4 v4, 0x1

    goto :goto_ee

    .line 438
    .restart local v4    # "index":I
    :cond_108
    iget-object v11, p0, Landroid/widget/TimePickerClockDelegate$7;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->mAmPmButton:Landroid/widget/Button;
    invoke-static {v11}, Landroid/widget/TimePickerClockDelegate;->access$600(Landroid/widget/TimePickerClockDelegate;)Landroid/widget/Button;

    move-result-object v11

    if-eqz v11, :cond_ff

    .line 439
    iget-object v11, p0, Landroid/widget/TimePickerClockDelegate$7;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->mAmPmButton:Landroid/widget/Button;
    invoke-static {v11}, Landroid/widget/TimePickerClockDelegate;->access$600(Landroid/widget/TimePickerClockDelegate;)Landroid/widget/Button;

    move-result-object v11

    iget-object v12, p0, Landroid/widget/TimePickerClockDelegate$7;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->mAmPmStrings:[Ljava/lang/String;
    invoke-static {v12}, Landroid/widget/TimePickerClockDelegate;->access$800(Landroid/widget/TimePickerClockDelegate;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_ff
.end method
