class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2367.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2367.0/lightdash-cli-0.2367.0-macos-arm64.tar.gz"
      sha256 "1890eb0ff5babbb9202cba0869ce81b82608a1cf26555a13ce71ed3a33f9dd2f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2367.0/lightdash-cli-0.2367.0-macos-x64.tar.gz"
      sha256 "8f08e99b13deac0f9a8dbdb19e5f93f87fa6439c052755f0d1660b88c54a6cee"
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
