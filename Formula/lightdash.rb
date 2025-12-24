class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2278.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2278.2/lightdash-cli-0.2278.2-macos-arm64.tar.gz"
      sha256 "a1bcd1dbf76d57ef46db95e9d983d06bb96e00a08cc7fc583245b05e4a3eb538"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2278.2/lightdash-cli-0.2278.2-macos-x64.tar.gz"
      sha256 "813469eea49b6477ad1642cf9eb0e3f2db4254c51d9784f1435d205516806cab"
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
