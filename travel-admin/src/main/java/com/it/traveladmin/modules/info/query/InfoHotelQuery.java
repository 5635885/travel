package com.it.traveladmin.modules.info.query;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.math.BigDecimal;
import java.util.Date;

/**
 * @author 石建国
 * @create 2021/2/26
 */
@Data
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="InfoHotel增加对象", description="酒店增加数据")
public class InfoHotelQuery {
    private static final long serialVersionUID=1L;

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


    @ApiModelProperty(value = "更新时间")
    private Date updateTime;
}
