class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3173.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3173.0/lightdash-cli-0.3173.0-macos-arm64.tar.gz"
      sha256 "1d32c335422ecd9fb0ba58aaf7f75d948ed50bd96f465f544d16df96d111bc54"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3173.0/lightdash-cli-0.3173.0-macos-x64.tar.gz"
      sha256 "fc70be94ddbc5ec2cf8eedbb13757964bec4dccc74fe5f42d94f7a29118a8fc9"
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
