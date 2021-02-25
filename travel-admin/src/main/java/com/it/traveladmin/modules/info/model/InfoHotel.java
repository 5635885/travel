package com.it.traveladmin.modules.info.model;

import java.math.BigDecimal;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import java.util.Date;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 酒店数据表
 * </p>
 *
 * @author SJG
 * @since 2021-02-25
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("info_hotel")
@ApiModel(value="InfoHotel对象", description="酒店数据表")
public class InfoHotel implements Serializable {

    private static final long serialVersionUID=1L;

    @ApiModelProperty(value = "主键")
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @ApiModelProperty(value = "酒店名")
    private String hotelName;

    @ApiModelProperty(value = "酒店介绍")
    private String introduc;

    @ApiModelProperty(value = "省")
    private String province;

    @ApiModelProperty(value = "市")
    private String city;

    @ApiModelProperty(value = "县")
    private String county;

    @ApiModelProperty(value = "乡")
    private String village;

    @ApiModelProperty(value = "详细地址")
    private String address;

    @ApiModelProperty(value = "价格")
    private BigDecimal price;

    private Date createdTime;

    @ApiModelProperty(value = "更新时间")
    private Date updateTime;


}
