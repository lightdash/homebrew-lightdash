class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2539.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2539.0/lightdash-cli-0.2539.0-macos-arm64.tar.gz"
      sha256 "d15d4895a9c54c4a65f95b1b45fb98d76223da97a899e798f5c231d1cb4bb89f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2539.0/lightdash-cli-0.2539.0-macos-x64.tar.gz"
      sha256 "6a7ec4d637e3616712d70d547e3026a71949c855d36b0dc8ed202f303b96940c"
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
