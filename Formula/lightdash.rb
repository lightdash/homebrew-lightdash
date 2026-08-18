class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.186.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.186.0/lightdash-cli-1.186.0-macos-arm64.tar.gz"
      sha256 "130cbd35a65f93f3225eec03cddac4966ed89a598e4562c3a5fd46edf3872e89"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.186.0/lightdash-cli-1.186.0-macos-x64.tar.gz"
      sha256 "09023940369f7ef0de43d36ed0f3c1d0b39135ee4f80d6d12472af5b14d2213a"
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
