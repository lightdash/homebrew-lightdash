class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2523.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2523.0/lightdash-cli-0.2523.0-macos-arm64.tar.gz"
      sha256 "21af28e313e872fa7d428f63125fa32b9f235aa430bb27234b31489d9c232591"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2523.0/lightdash-cli-0.2523.0-macos-x64.tar.gz"
      sha256 "20af7e478aa1140c1ac5c9d43b810da8f7c3046b50a67e40710e61f34ba6be28"
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
