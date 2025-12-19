class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2266.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2266.0/lightdash-cli-0.2266.0-macos-arm64.tar.gz"
      sha256 "9ea5f19a8bde638d8e1324410bec97c27adf99ae5326bee7bcc48666447219b0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2266.0/lightdash-cli-0.2266.0-macos-x64.tar.gz"
      sha256 "a9f59d0d7882264365761bab5c4d3f22aa3da637567365ba80ac55d281f75194"
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
