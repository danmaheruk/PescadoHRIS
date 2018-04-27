class StaticPagesController < ApplicationController
  def home
  end

  def splash
  end

  def help
  end

  def about
  end

  # functions for downloading docs, need base URL to change in new environment
    def holidayreq
      send_file '/home/user/Programs/PescadoHRIS/public/HolidayRequestForm.docx', :type => "application/octet-stream"
      end

    def eyetests
      send_file '/home/user/Programs/PescadoHRIS/public/Contribution to Eye Tests and Optical Equipment.pdf', :type =>"application/octet-stream"
      end

    def lgvip
      send_file '/home/user/Programs/PescadoHRIS/public/March 2017 LG Lifes Good VIP Price List.xlsx', :type => "application/octet-stream"
    end

    def flexiapp
      send_file '/home/user/Programs/PescadoHRIS/public/Flexible Working Application Form - Oct 2014.pdf', :type => "application/octet-stream"
    end

    def healthsaf
      send_file '/home/user/Programs/PescadoHRIS/public/H&S Policy.pdf', :type => "application/octet-stream"
    end

    def equalopp
      send_file '/home/user/Programs/PescadoHRIS/public/E&D Policy.pdf', :type => "application/octet-stream"
    end

    def addhols
      send_file '/home/user/Programs/PescadoHRIS/public/Additional Holidays Policy.pdf', :type => "application/octet-stream"
    end

    def accompol
      send_file '/home/user/Programs/PescadoHRIS/public/Accommodation and Meal Allowances Policy.pdf', :type => "application/octet-stream"
    end

    def carpol
      send_file '/home/user/Programs/PescadoHRIS/public/Company Car Drivers Handbook.pdf', :type => "application/octet-stream"
    end

    def devilscomic
      send_file '/home/user/Programs/PescadoHRIS/public/Pescado Employee Handbook.pdf', :type => "application/octet-stream"
    end

    def confpol
      send_file '/home/user/Programs/PescadoHRIS/public/Pescado Confidentiality Policy.pdf', :type => "application/octet-stream"
    end

    def parentals
      send_file '/home/user/Programs/PescadoHRIS/public/Shared Parental Leave policy.pdf', :type => "application/octet-stream"
    end

    def probrev
      send_file '/home/user/Programs/PescadoHRIS/public/Probationary Review Process.docx', :type => "application/octet-stream"
    end

    def patpol
      send_file '/home/user/Programs/PescadoHRIS/public/Paternity policy.pdf', :type => "application/octet-stream"
    end

    def parental
      send_file '/home/user/Programs/PescadoHRIS/public/Parental Leave Policy.pdf', :type => "application/octet-stream"
    end

    def matpol
      send_file '/home/user/Programs/PescadoHRIS/public/MaternityPolicy.pdf', :type => "application/octet-stream"
    end

    def flexwork
      send_file '/home/user/Programs/PescadoHRIS/public/Flexible Working Policy - June 2014.pdf', :type => "application/octet-stream"
    end

    def staffdatpol
      send_file '/home/user/Programs/PescadoHRIS/public/Staff Data Protection.pdf', :type => "application/octet-stream"
    end

    def discounts
      send_file '/home/user/Programs/PescadoHRIS/public/pescado staff benefits.jpg', :type => "application/octet-stream"
    end

    def benefitspic
      send_file '/home/user/Programs/PescadoHRIS/public/pescado staff benefits.jpg', :type => "application/octet-stream"
    end

    def orgstr
      send_file '/home/user/Programs/PescadoHRIS/public/Pescado org chart.pdf', :type => "application/octet-stream"
    end

    def strat16
      send_file '/home/user/Programs/PescadoHRIS/public/Pescado-Strategy-Presentation 2016.pdf', :type => "application/octet-stream"
    end


end
