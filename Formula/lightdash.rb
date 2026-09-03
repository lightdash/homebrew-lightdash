class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.110.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.110.3/lightdash-cli-2.110.3-macos-arm64.tar.gz"
      sha256 "8976ca05b7402a009a47a0f5bb219ee02d191baeecda638d8f87a42808969e37"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.110.3/lightdash-cli-2.110.3-macos-x64.tar.gz"
      sha256 "98d4708aee55b5eecac9c50859d33c4fa47fa3ed26d32137a371ee2a8454abd8"
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
