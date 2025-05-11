V34 :0x24 smartredis_mpi
18 smartredis_mpi.f90 S624 0
05/11/2025  16:18:05
use iso_fortran_env private
use iso_c_binding private
use smartredis_client private
use precision private
enduse
D 58 23 6 1 11 11 0 0 0 0 0
 0 11 11 11 11 11
D 61 23 6 1 11 11 0 0 0 0 0
 0 11 11 11 11 11
D 64 23 6 1 11 57 0 0 0 0 0
 0 57 11 11 57 57
D 67 23 6 1 11 57 0 0 0 0 0
 0 57 11 11 57 57
D 70 23 6 1 11 57 0 0 0 0 0
 0 57 11 11 57 57
D 73 23 6 1 11 57 0 0 0 0 0
 0 57 11 11 57 57
D 76 23 6 1 11 58 0 0 0 0 0
 0 58 11 11 58 58
D 79 23 6 1 11 58 0 0 0 0 0
 0 58 11 11 58 58
D 82 26 689 8 688 7
D 91 26 692 8 691 7
D 3016 26 689 8 688 7
D 3351 26 9075 16 9074 7
D 3522 23 6 1 1824 1827 1 1 0 0 1
 11 1825 11 11 1825 1826
D 3525 23 10 1 11 1831 0 0 1 0 0
 0 1830 11 11 1831 1831
D 3528 23 6 1 1833 1836 1 1 0 0 1
 11 1834 11 11 1834 1835
D 3531 23 10 1 11 1839 0 0 1 0 0
 0 1838 11 11 1839 1839
D 3534 23 6 1 1841 1844 1 1 0 0 1
 11 1842 11 11 1842 1843
D 3537 23 10 1 11 1847 0 0 1 0 0
 0 1846 11 11 1847 1847
D 3540 23 6 1 1849 1852 1 1 0 0 1
 11 1850 11 11 1850 1851
D 3543 23 6 1 11 1855 0 0 1 0 0
 0 1854 11 11 1855 1855
D 3546 23 6 1 1857 1860 1 1 0 0 1
 11 1858 11 11 1858 1859
D 3549 23 10 1 11 1863 0 0 1 0 0
 0 1862 11 11 1863 1863
S 624 24 0 0 0 9 1 0 5012 10015 0 A 0 0 0 0 B 0 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7 0 0 0 0 0 0 smartredis_mpi
S 627 23 0 0 0 9 7695 624 5031 14 0 A 0 0 0 0 B 400000 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 rp
S 628 23 0 0 0 6 7696 624 5034 14 0 A 0 0 0 0 B 400000 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 mpi_real_rp
S 630 23 0 0 0 9 9074 624 5064 14 0 A 0 0 0 0 B 400000 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 client_type
S 633 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 635 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 640 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 641 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 642 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 645 7 3 iso_fortran_env character_kinds$ac
R 667 7 25 iso_fortran_env integer_kinds$ac
R 669 7 27 iso_fortran_env logical_kinds$ac
R 671 7 29 iso_fortran_env real_kinds$ac
R 688 25 7 iso_c_binding c_ptr
R 689 5 8 iso_c_binding val c_ptr
R 691 25 10 iso_c_binding c_funptr
R 692 5 11 iso_c_binding val c_funptr
R 726 6 45 iso_c_binding c_null_ptr$ac
R 728 6 47 iso_c_binding c_null_funptr$ac
R 729 26 48 iso_c_binding ==
R 731 26 50 iso_c_binding !=
S 766 3 0 0 0 18 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 18
R 7695 16 6 precision rp
R 7696 16 7 precision mpi_real_rp
R 9074 25 606 smartredis_client client_type
R 9075 5 607 smartredis_client client_ptr client_type
R 9076 5 608 smartredis_client is_initialized client_type
R 9150 5 682 smartredis_client unpack_tensor_double$tbp$0 client_type
R 9151 5 683 smartredis_client unpack_tensor_float$tbp$1 client_type
R 9152 5 684 smartredis_client unpack_tensor_i64$tbp$2 client_type
R 9153 5 685 smartredis_client unpack_tensor_i32$tbp$3 client_type
R 9154 5 686 smartredis_client unpack_tensor_i16$tbp$4 client_type
R 9155 5 687 smartredis_client unpack_tensor_i8$tbp$5 client_type
R 9156 5 688 smartredis_client put_tensor_double$tbp$6 client_type
R 9157 5 689 smartredis_client put_tensor_float$tbp$7 client_type
R 9158 5 690 smartredis_client put_tensor_i64$tbp$8 client_type
R 9159 5 691 smartredis_client put_tensor_i32$tbp$9 client_type
R 9160 5 692 smartredis_client put_tensor_i16$tbp$10 client_type
R 9161 5 693 smartredis_client put_tensor_i8$tbp$11 client_type
R 9162 5 694 smartredis_client initialize_client_cfgopts$tbp$12 client_type
R 9163 5 695 smartredis_client initialize_client_simple$tbp$13 client_type
R 9164 5 696 smartredis_client initialize_client_deprecated$tbp$14 client_type
R 9165 5 697 smartredis_client print_client$tbp$15 client_type
R 9166 5 698 smartredis_client to_string$tbp$16 client_type
R 9167 5 699 smartredis_client get_datasets_from_list_range$tbp$17 client_type
R 9168 5 700 smartredis_client get_datasets_from_list$tbp$18 client_type
R 9169 5 701 smartredis_client poll_list_length_lte$tbp$19 client_type
R 9170 5 702 smartredis_client poll_list_length_gte$tbp$20 client_type
R 9171 5 703 smartredis_client poll_list_length$tbp$21 client_type
R 9172 5 704 smartredis_client get_list_length$tbp$22 client_type
R 9173 5 705 smartredis_client rename_list$tbp$23 client_type
R 9174 5 706 smartredis_client copy_list$tbp$24 client_type
R 9175 5 707 smartredis_client delete_list$tbp$25 client_type
R 9176 5 708 smartredis_client append_to_list$tbp$26 client_type
R 9177 5 709 smartredis_client set_data_source$tbp$27 client_type
R 9178 5 710 smartredis_client use_list_ensemble_prefix$tbp$28 client_type
R 9179 5 711 smartredis_client use_model_ensemble_prefix$tbp$29 client_type
R 9180 5 712 smartredis_client use_dataset_ensemble_prefix$tbp$30 client_type
R 9181 5 713 smartredis_client use_tensor_ensemble_prefix$tbp$31 client_type
R 9182 5 714 smartredis_client delete_dataset$tbp$32 client_type
R 9183 5 715 smartredis_client copy_dataset$tbp$33 client_type
R 9184 5 716 smartredis_client rename_dataset$tbp$34 client_type
R 9185 5 717 smartredis_client get_dataset$tbp$35 client_type
R 9186 5 718 smartredis_client put_dataset$tbp$36 client_type
R 9187 5 719 smartredis_client delete_model_multigpu$tbp$37 client_type
R 9188 5 720 smartredis_client delete_model$tbp$38 client_type
R 9189 5 721 smartredis_client delete_script_multigpu$tbp$39 client_type
R 9190 5 722 smartredis_client delete_script$tbp$40 client_type
R 9191 5 723 smartredis_client run_model_multigpu$tbp$41 client_type
R 9192 5 724 smartredis_client run_model$tbp$42 client_type
R 9193 5 725 smartredis_client run_script_multigpu$tbp$43 client_type
R 9194 5 726 smartredis_client run_script$tbp$44 client_type
R 9195 5 727 smartredis_client get_script$tbp$45 client_type
R 9196 5 728 smartredis_client set_script_multigpu$tbp$46 client_type
R 9197 5 729 smartredis_client set_script$tbp$47 client_type
R 9198 5 730 smartredis_client set_script_from_file_multigpu$tbp$48 client_type
R 9199 5 731 smartredis_client set_script_from_file$tbp$49 client_type
R 9200 5 732 smartredis_client get_model$tbp$50 client_type
R 9201 5 733 smartredis_client set_model_multigpu$tbp$51 client_type
R 9202 5 734 smartredis_client set_model$tbp$52 client_type
R 9203 5 735 smartredis_client set_model_from_file_multigpu$tbp$53 client_type
R 9204 5 736 smartredis_client set_model_from_file$tbp$54 client_type
R 9205 5 737 smartredis_client copy_tensor$tbp$55 client_type
R 9206 5 738 smartredis_client delete_tensor$tbp$56 client_type
R 9207 5 739 smartredis_client rename_tensor$tbp$57 client_type
R 9208 5 740 smartredis_client poll_key$tbp$58 client_type
R 9209 5 741 smartredis_client poll_dataset$tbp$59 client_type
R 9210 5 742 smartredis_client poll_tensor$tbp$60 client_type
R 9211 5 743 smartredis_client poll_model$tbp$61 client_type
R 9212 5 744 smartredis_client dataset_exists$tbp$62 client_type
R 9213 5 745 smartredis_client key_exists$tbp$63 client_type
R 9214 5 746 smartredis_client tensor_exists$tbp$64 client_type
R 9215 5 747 smartredis_client model_exists$tbp$65 client_type
R 9216 5 748 smartredis_client get_c_pointer$tbp$66 client_type
R 9217 5 749 smartredis_client destructor$tbp$67 client_type
R 9218 5 750 smartredis_client isinitialized$tbp$68 client_type
R 9219 5 751 smartredis_client sr_error_parser$tbp$69 client_type
R 9220 5 752 smartredis_client unpack_tensor$tbpg$70 client_type
R 9221 5 753 smartredis_client unpack_tensor$tbpg$71 client_type
R 9222 5 754 smartredis_client unpack_tensor$tbpg$72 client_type
R 9223 5 755 smartredis_client unpack_tensor$tbpg$73 client_type
R 9224 5 756 smartredis_client unpack_tensor$tbpg$74 client_type
R 9225 5 757 smartredis_client unpack_tensor$tbpg$75 client_type
R 9226 5 758 smartredis_client put_tensor$tbpg$76 client_type
R 9227 5 759 smartredis_client put_tensor$tbpg$77 client_type
R 9228 5 760 smartredis_client put_tensor$tbpg$78 client_type
R 9229 5 761 smartredis_client put_tensor$tbpg$79 client_type
R 9230 5 762 smartredis_client put_tensor$tbpg$80 client_type
R 9231 5 763 smartredis_client put_tensor$tbpg$81 client_type
R 9232 5 764 smartredis_client initialize$tbpg$82 client_type
R 9233 5 765 smartredis_client initialize$tbpg$83 client_type
R 9234 5 766 smartredis_client initialize$tbpg$84 client_type
S 9858 6 4 0 0 6 9859 624 49537 14 0 A 0 0 0 0 B 0 13 0 0 0 0 0 0 0 0 0 0 9870 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nprocs
S 9859 6 4 0 0 6 9860 624 49544 14 0 A 0 0 0 0 B 0 13 0 0 0 4 0 0 0 0 0 0 9870 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 myid
S 9860 6 4 0 0 6 9861 624 11603 14 0 A 0 0 0 0 B 0 13 0 0 0 8 0 0 0 0 0 0 9870 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ierr
S 9861 6 4 0 0 6 9869 624 49549 14 0 A 0 0 0 0 B 0 14 0 0 0 12 0 0 0 0 0 0 9870 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 mpi_comm_local
S 9862 27 0 0 0 6 9871 624 49564 0 8000000 A 0 0 0 0 B 0 18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 init_smartredis_mpi
S 9863 27 0 0 0 9 9929 624 49584 0 8000000 A 0 0 0 0 B 0 18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 finalize_smartredis_mpi
S 9864 27 0 0 0 9 9875 624 49608 0 8000000 A 0 0 0 0 B 0 18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 put_step_type
S 9865 27 0 0 0 9 9879 624 49622 0 8000000 A 0 0 0 0 B 0 18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 put_state
S 9866 27 0 0 0 9 9889 624 49632 0 8000000 A 0 0 0 0 B 0 18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 put_reward
S 9867 27 0 0 0 9 9899 624 49643 0 8000000 A 0 0 0 0 B 0 18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 get_action
S 9868 27 0 0 0 9 9909 624 49654 0 8000000 A 0 0 0 0 B 0 18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 put_info
S 9869 6 4 0 0 3351 1 624 38499 14 0 A 0 0 0 0 B 0 22 0 0 0 16 0 0 0 0 0 0 9870 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 client
S 9870 11 0 0 0 9 9240 624 49663 40800010 805000 A 0 0 0 0 B 0 24 0 0 0 32 0 0 9858 9869 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 _smartredis_mpi$4
S 9871 23 5 0 0 0 9874 624 49564 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 init_smartredis_mpi
S 9872 1 3 1 0 18 1 9871 49681 14 3000 A 0 0 0 0 B 0 26 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 db_clustered
S 9873 1 3 1 0 6 1 9871 11534 80000014 3000 A 0 0 0 0 B 0 26 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 comm
S 9874 14 5 0 0 0 1 9871 49564 0 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 6102 2 0 0 0 0 0 0 0 0 0 0 0 0 26 0 624 0 0 0 0 init_smartredis_mpi init_smartredis_mpi 
F 9874 2 9872 9873
S 9875 23 5 0 0 0 9878 624 49608 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 put_step_type
S 9876 1 3 1 0 30 1 9875 15547 14 43000 A 0 0 0 0 B 0 49 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 key
S 9877 1 3 1 0 6 1 9875 49694 14 3000 A 0 0 0 0 B 0 49 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 step_type
S 9878 14 5 0 0 0 1 9875 49608 0 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 6105 2 0 0 0 0 0 0 0 0 0 0 0 0 49 0 624 0 0 0 0 put_step_type put_step_type 
F 9878 2 9876 9877
S 9879 23 5 0 0 0 9883 624 49622 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 put_state
S 9880 1 3 1 0 30 1 9879 15547 14 43000 A 0 0 0 0 B 0 62 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 key
S 9881 7 3 1 0 3522 1 9879 13428 20000014 10003000 A 0 0 0 0 B 0 62 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dims
S 9882 7 3 1 0 3525 1 9879 49704 800214 3000 A 0 0 0 0 B 0 62 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 state
S 9883 14 5 0 0 0 1 9879 49622 20000200 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 6108 3 0 0 0 0 0 0 0 0 0 0 0 0 62 0 624 0 0 0 0 put_state put_state 
F 9883 3 9880 9881 9882
S 9884 6 1 0 0 7 1 9879 12105 40800016 3000 A 0 0 0 0 B 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1
S 9885 6 1 0 0 7 1 9879 12398 40800016 3000 A 0 0 0 0 B 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2
S 9886 6 1 0 0 7 1 9879 12404 40800016 3000 A 0 0 0 0 B 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3
S 9887 6 1 0 0 7 1 9879 49710 40800016 3000 A 0 0 0 0 B 0 65 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_1829
S 9888 6 1 0 0 7 1 9879 49719 40800016 3000 A 0 0 0 0 B 0 66 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_1833
S 9889 23 5 0 0 0 9893 624 49632 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 put_reward
S 9890 1 3 1 0 30 1 9889 15547 14 43000 A 0 0 0 0 B 0 102 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 key
S 9891 7 3 1 0 3528 1 9889 13428 20000014 10003000 A 0 0 0 0 B 0 102 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dims
S 9892 7 3 1 0 3531 1 9889 49728 800214 3000 A 0 0 0 0 B 0 102 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 reward
S 9893 14 5 0 0 0 1 9889 49632 20000200 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 6112 3 0 0 0 0 0 0 0 0 0 0 0 0 102 0 624 0 0 0 0 put_reward put_reward 
F 9893 3 9890 9891 9892
S 9894 6 1 0 0 7 1 9889 12105 40800016 3000 A 0 0 0 0 B 0 105 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1
S 9895 6 1 0 0 7 1 9889 12398 40800016 3000 A 0 0 0 0 B 0 105 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2
S 9896 6 1 0 0 7 1 9889 12404 40800016 3000 A 0 0 0 0 B 0 105 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3
S 9897 6 1 0 0 7 1 9889 49735 40800016 3000 A 0 0 0 0 B 0 105 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_1838
S 9898 6 1 0 0 7 1 9889 49744 40800016 3000 A 0 0 0 0 B 0 106 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_1842
S 9899 23 5 0 0 0 9903 624 49643 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 get_action
S 9900 1 3 1 0 30 1 9899 15547 14 43000 A 0 0 0 0 B 0 142 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 key
S 9901 7 3 1 0 3534 1 9899 13428 20000014 10003000 A 0 0 0 0 B 0 142 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dims
S 9902 7 3 2 0 3537 1 9899 49753 800214 3000 A 0 0 0 0 B 0 142 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 action
S 9903 14 5 0 0 0 1 9899 49643 20000200 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 6116 3 0 0 0 0 0 0 0 0 0 0 0 0 142 0 624 0 0 0 0 get_action get_action 
F 9903 3 9900 9901 9902
S 9904 6 1 0 0 7 1 9899 12105 40800016 3000 A 0 0 0 0 B 0 145 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1
S 9905 6 1 0 0 7 1 9899 12398 40800016 3000 A 0 0 0 0 B 0 145 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2
S 9906 6 1 0 0 7 1 9899 12404 40800016 3000 A 0 0 0 0 B 0 145 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3
S 9907 6 1 0 0 7 1 9899 49760 40800016 3000 A 0 0 0 0 B 0 145 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_1846
S 9908 6 1 0 0 7 1 9899 49769 40800016 3000 A 0 0 0 0 B 0 146 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_1850
S 9909 23 5 0 0 0 9913 624 49654 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 put_info
S 9910 1 3 1 0 30 1 9909 15547 14 43000 A 0 0 0 0 B 0 192 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 key
S 9911 7 3 1 0 3540 1 9909 13428 20000014 10003000 A 0 0 0 0 B 0 192 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dims
S 9912 7 3 1 0 3543 1 9909 12552 800214 3000 A 0 0 0 0 B 0 192 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 info
S 9913 14 5 0 0 0 1 9909 49654 20000200 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 6120 3 0 0 0 0 0 0 0 0 0 0 0 0 192 0 624 0 0 0 0 put_info put_info 
F 9913 3 9910 9911 9912
S 9914 6 1 0 0 7 1 9909 12105 40800016 3000 A 0 0 0 0 B 0 196 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1
S 9915 6 1 0 0 7 1 9909 12398 40800016 3000 A 0 0 0 0 B 0 196 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2
S 9916 6 1 0 0 7 1 9909 12404 40800016 3000 A 0 0 0 0 B 0 196 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3
S 9917 6 1 0 0 7 1 9909 49778 40800016 3000 A 0 0 0 0 B 0 196 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_1854
S 9918 6 1 0 0 7 1 9909 49787 40800016 3000 A 0 0 0 0 B 0 197 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_1858
S 9919 23 5 0 0 0 9923 624 49796 10 0 A 0 0 0 0 B 0 233 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 put_real_scalar
S 9920 1 3 1 0 30 1 9919 15547 14 43000 A 0 0 0 0 B 0 233 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 key
S 9921 7 3 1 0 3546 1 9919 13428 20000014 10003000 A 0 0 0 0 B 0 233 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dims
S 9922 7 3 1 0 3549 1 9919 49812 800214 3000 A 0 0 0 0 B 0 233 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 rscalar
S 9923 14 5 0 0 0 1 9919 49796 20000210 400000 A 0 0 0 0 B 0 233 0 0 0 0 0 6124 3 0 0 0 0 0 0 0 0 0 0 0 0 233 0 624 0 0 0 0 put_real_scalar put_real_scalar 
F 9923 3 9920 9921 9922
S 9924 6 1 0 0 7 1 9919 12105 40800016 3000 A 0 0 0 0 B 0 237 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1
S 9925 6 1 0 0 7 1 9919 12398 40800016 3000 A 0 0 0 0 B 0 237 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2
S 9926 6 1 0 0 7 1 9919 12404 40800016 3000 A 0 0 0 0 B 0 237 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3
S 9927 6 1 0 0 7 1 9919 49820 40800016 3000 A 0 0 0 0 B 0 237 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_1862
S 9928 6 1 0 0 7 1 9919 49829 40800016 3000 A 0 0 0 0 B 0 238 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_1866
S 9929 23 5 0 0 0 9930 624 49584 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 finalize_smartredis_mpi
S 9930 14 5 0 0 0 1 9929 49584 0 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 6128 0 0 0 0 0 0 0 0 0 0 0 0 0 252 0 624 0 0 0 0 finalize_smartredis_mpi finalize_smartredis_mpi 
F 9930 0
A 16 2 0 0 0 6 633 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0
A 33 2 0 0 0 6 635 0 0 0 33 0 0 0 0 0 0 0 0 0 0 0
A 35 2 0 0 0 6 640 0 0 0 35 0 0 0 0 0 0 0 0 0 0 0
A 57 2 0 0 0 7 641 0 0 0 57 0 0 0 0 0 0 0 0 0 0 0
A 58 2 0 0 0 7 642 0 0 0 58 0 0 0 0 0 0 0 0 0 0 0
A 61 1 0 1 0 58 645 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 67 1 0 3 0 64 667 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 73 1 0 3 0 70 669 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 77 1 0 5 0 76 671 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 131 1 0 0 0 82 726 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 134 1 0 0 0 91 728 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 157 2 0 0 3 18 766 0 0 0 157 0 0 0 0 0 0 0 0 0 0 0
A 1824 1 0 0 1061 7 9886 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1825 1 0 0 436 7 9884 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1826 1 0 0 439 7 9887 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1827 1 0 0 1060 7 9885 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1828 1 0 0 0 0 411 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1829 1 0 9 0 3522 9881 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1830 14 0 0 0 6 1828 0 0 0 0 0 0 228 3 1 0 0 0 0 0 0
W 3 1829 0 0
A 1831 1 0 0 440 7 9888 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1833 1 0 0 448 7 9896 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1834 1 0 0 446 7 9894 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1835 1 0 0 1062 7 9897 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1836 1 0 0 447 7 9895 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1837 1 0 11 0 3528 9891 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1838 14 0 0 0 6 1828 0 0 0 0 0 0 228 3 5 0 0 0 0 0 0
W 3 1837 0 0
A 1839 1 0 0 1063 7 9898 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1841 1 0 0 458 7 9906 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1842 1 0 0 456 7 9904 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1843 1 0 0 459 7 9907 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1844 1 0 0 457 7 9905 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1845 1 0 13 0 3534 9901 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1846 14 0 0 0 6 1828 0 0 0 0 0 0 228 3 9 0 0 0 0 0 0
W 3 1845 0 0
A 1847 1 0 0 460 7 9908 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1849 1 0 0 468 7 9916 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1850 1 0 0 466 7 9914 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1851 1 0 0 469 7 9917 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1852 1 0 0 467 7 9915 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1853 1 0 15 0 3540 9911 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1854 14 0 0 0 6 1828 0 0 0 0 0 0 228 3 13 0 0 0 0 0 0
W 3 1853 0 0
A 1855 1 0 0 470 7 9918 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1857 1 0 0 478 7 9926 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1858 1 0 0 476 7 9924 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1859 1 0 0 1066 7 9927 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1860 1 0 0 477 7 9925 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1861 1 0 17 0 3546 9921 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1862 14 0 0 0 6 1828 0 0 0 0 0 0 228 3 17 0 0 0 0 0 0
W 3 1861 0 0
A 1863 1 0 0 1067 7 9928 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
Z
J 29 1 1
V 61 58 7 0
R 0 61 0 0
A 0 6 0 0 1 3 0
J 75 1 1
V 67 64 7 0
R 0 67 0 0
A 0 6 0 0 1 3 1
A 0 6 0 0 1 33 1
A 0 6 0 0 1 35 1
A 0 6 0 0 1 16 0
J 77 1 1
V 73 70 7 0
R 0 73 0 0
A 0 6 0 0 1 3 1
A 0 6 0 0 1 33 1
A 0 6 0 0 1 35 1
A 0 6 0 0 1 16 0
J 80 1 1
V 77 76 7 0
R 0 79 0 0
A 0 6 0 0 1 35 1
A 0 6 0 0 1 16 0
J 133 1 1
V 131 82 7 0
S 0 82 0 0 0
A 0 6 0 0 1 2 0
J 134 1 1
V 134 91 7 0
S 0 91 0 0 0
A 0 6 0 0 1 2 0
T 9074 3351 0 3 0 0
S 9075 3016 0 0 1
A 0 3016 0 0 1 131 0
A 9076 18 0 0 1 157 0
Z
