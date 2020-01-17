# This file was generated by GoReleaser. DO NOT EDIT.
class Uropa < Formula
  desc "Declarative configuration for Opa"
  homepage "https://github.com/ninjaneers-team/uropa"
  version "1.3.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ninjaneers-team/uropa/releases/download/v1.3.0/uropa_1.3.0_darwin_amd64.tar.gz"
    sha256 "4216809e66b2734c67496539fd7bbf9013aaaf3c21f4fe85936ee83a23e80269"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ninjaneers-team/uropa/releases/download/v1.3.0/uropa_1.3.0_linux_amd64.tar.gz"
      sha256 "94866547bc98e64b0075946e13d88f012566399cba288bf2ea45b0005d1f861f"
    end
  end

  def install
    bin.install "uropa"
  end

  test do
    system "#{bin}/uropa version"
  end
end
