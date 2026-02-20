class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2502.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2502.3/lightdash-cli-0.2502.3-macos-arm64.tar.gz"
      sha256 "1e60770458f4eadb14652fcdefac3058cf8b81f38fcc46ec0e6921be5509154f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2502.3/lightdash-cli-0.2502.3-macos-x64.tar.gz"
      sha256 "dbe89ec334c54871451e8a459ca108b5e2e8da1cbcfe0d7d13a5ee3e70e991c8"
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
