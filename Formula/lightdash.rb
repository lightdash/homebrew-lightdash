class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.10.0/lightdash-cli-2.10.0-macos-arm64.tar.gz"
      sha256 "1ab2fb3f1267b4c83be8eb3061073f4dac31902e00a42545a2d7c86ce834845b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.10.0/lightdash-cli-2.10.0-macos-x64.tar.gz"
      sha256 "31ca5abbca86c2561990442c91a7be130173ed190a3d825961045f034772a98f"
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
