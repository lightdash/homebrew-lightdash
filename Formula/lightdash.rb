class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2374.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2374.2/lightdash-cli-0.2374.2-macos-arm64.tar.gz"
      sha256 "c834d74561b8826122ebaea2130b6e912886577a311e9cf488ca129c29cdb065"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2374.2/lightdash-cli-0.2374.2-macos-x64.tar.gz"
      sha256 "b11261a5c0fa7dc558c15b04365c638b7497a15e9953c3663baf365717973969"
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
