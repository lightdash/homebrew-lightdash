class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2766.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2766.0/lightdash-cli-0.2766.0-macos-arm64.tar.gz"
      sha256 "888280abb4da25cdbef39f5319a5e9c608010087885884b6849d6c32ec6867c8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2766.0/lightdash-cli-0.2766.0-macos-x64.tar.gz"
      sha256 "0d20b3549a84442eecfeb285d32e297cff5bbfaac5cee47c87348aa7ef2507c3"
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
