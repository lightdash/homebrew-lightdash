class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2278.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2278.5/lightdash-cli-0.2278.5-macos-arm64.tar.gz"
      sha256 "15c4a0bf9fdfd306be174935aba6d5c5f393cb519a194b4d918a79d0ef36d094"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2278.5/lightdash-cli-0.2278.5-macos-x64.tar.gz"
      sha256 "e2a85179c45d759cd5ee1888bb3926a96c032281e2f08140b5df4e35c2f3345c"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
