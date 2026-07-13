class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3365.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3365.0/lightdash-cli-0.3365.0-macos-arm64.tar.gz"
      sha256 "766358c688373c60a68462bd4cb8673f187ea41fd46a167cd080422dbdffea14"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3365.0/lightdash-cli-0.3365.0-macos-x64.tar.gz"
      sha256 "84fb3ca203565a7e683617d4a9ef734d55f4aab47246ec489eac0d557e7d050d"
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
