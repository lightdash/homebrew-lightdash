class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.165.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.165.2/lightdash-cli-2.165.2-macos-arm64.tar.gz"
      sha256 "a53a8897007efbbaade49d8ffdead461327a4fa153f250d4bc7e552f2847780e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.165.2/lightdash-cli-2.165.2-macos-x64.tar.gz"
      sha256 "bb57dd2505309dc4c3b0e84f20bd2eb542197353774948c48d93b3e48eeaf601"
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
