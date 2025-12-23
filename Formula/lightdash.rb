class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2270.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.16/lightdash-cli-0.2270.16-macos-arm64.tar.gz"
      sha256 "94a4fba86ba8e3441a64d54a8a667baeaca80aa8468422eb1a42084f63684a59"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.16/lightdash-cli-0.2270.16-macos-x64.tar.gz"
      sha256 "df3a4ce9a45b29b8e64e65dcf7a584ee15722bd8ee2cf67876e85aaa686731cb"
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
