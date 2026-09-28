class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.360.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.360.0/lightdash-cli-2.360.0-macos-arm64.tar.gz"
      sha256 "a9a354e7afd103f0f895e5d4aa5630344b19d65ea6b612f76c7536df6ffb2655"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.360.0/lightdash-cli-2.360.0-macos-x64.tar.gz"
      sha256 "95c9f312648e4f5662f197bc32cf01181f6eb6e38dc971772609b86f9d95031d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.360.0/lightdash-cli-2.360.0-linux-x64.tar.gz"
    sha256 "4f7e4af2fd28b26edab8ca1fea0cb3989d76f82d72162ccba102400e6d6e2798"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
