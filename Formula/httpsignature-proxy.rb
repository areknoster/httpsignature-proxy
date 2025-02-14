# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HttpsignatureProxy < Formula
  desc "Localhost HTTP Signatures proxy."
  homepage "https://github.com/upvestco/httpsignature-proxy"
  version "1.3.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/upvestco/httpsignature-proxy/releases/download/v1.3.0/httpsignature-proxy_v1.3.0_macOS_arm64.tar.gz"
      sha256 "2dcde345c29d8d53d5e98b8c310379a3156ff86b6eabb056f0b5bc80f1546897"

      def install
        bin.install "httpsignature-proxy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/upvestco/httpsignature-proxy/releases/download/v1.3.0/httpsignature-proxy_v1.3.0_macOS_64-bit.tar.gz"
      sha256 "1efe9440224e54f80f88c03ee6be23aab13bc50ca2935a151c297e3408f5312f"

      def install
        bin.install "httpsignature-proxy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/upvestco/httpsignature-proxy/releases/download/v1.3.0/httpsignature-proxy_v1.3.0_Linux_arm64.tar.gz"
      sha256 "1d8e6001313b302d0af9e1e507c30869b78165ebb7c093bbde667a7314356a26"

      def install
        bin.install "httpsignature-proxy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/upvestco/httpsignature-proxy/releases/download/v1.3.0/httpsignature-proxy_v1.3.0_Linux_64-bit.tar.gz"
      sha256 "9da70bbacb7fe6af57f9fc93dd3b34484f38b273ac5fa88e19944e38b5bd6755"

      def install
        bin.install "httpsignature-proxy"
      end
    end
  end

  test do
    system "#{bin}/httpsignature-proxy version"
  end
end
