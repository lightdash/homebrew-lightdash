class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2832.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2832.0/lightdash-cli-0.2832.0-macos-arm64.tar.gz"
      sha256 "7669a181acd3d22525ba12bc34aad0e268bbe1f954db5efe08e936173930ffd4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2832.0/lightdash-cli-0.2832.0-macos-x64.tar.gz"
      sha256 "f67381ecf0b689987a3d552c46f913c66a1e5c71c2ed70da1f1384ce63542608"
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
