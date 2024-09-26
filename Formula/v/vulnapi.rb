# typed: false
# frozen_string_literal: true

class Vulnapi < Formula
  desc "VulnAPI is an open-source project designed to help you scan your APIs for common security vulnerabilities and weaknesses."
  homepage "https://vulnapi.cerberauth.com/"
  version "0.7.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/cerberauth/vulnapi/releases/download/v0.7.3/vulnapi_Darwin_x86_64.tar.gz"
      sha256 "7d6da3d15db73204c6d21134b791e7f2815d6a1614ca00c179c071ad4b0efd3a"

      def install
        bin.install "vulnapi"
      end
    end
    on_arm do
      url "https://github.com/cerberauth/vulnapi/releases/download/v0.7.3/vulnapi_Darwin_arm64.tar.gz"
      sha256 "ed33adbaf8183c809f07b4a5b091812b13e7dec5147c1e4d96a74fd5f6f7d130"

      def install
        bin.install "vulnapi"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cerberauth/vulnapi/releases/download/v0.7.3/vulnapi_Linux_x86_64.tar.gz"
        sha256 "9c4048a4e5d87cac312798ce3e78c1713fb5a1749e87298ba397bcb73b2661d9"

        def install
          bin.install "vulnapi"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cerberauth/vulnapi/releases/download/v0.7.3/vulnapi_Linux_arm64.tar.gz"
        sha256 "a98819360b26a1d8bbf00b9d03069ed18af984f68320ab8a43608a40ff8867d9"

        def install
          bin.install "vulnapi"
        end
      end
    end
  end

  test do
    system "#{bin}/vulnapi", "help"
  end
end
