class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.624.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.624.0/lightdash-cli-2.624.0-macos-arm64.tar.gz"
      sha256 "6f07b26333d52a70a40a06db183d9d4f90a938d0111d522f6153830bbd935f6c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.624.0/lightdash-cli-2.624.0-macos-x64.tar.gz"
      sha256 "77d8b68fbccf7da7b0b51fcc39932c1014aec6b0ed5d5395ee9c1a7ca1ce543f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.624.0/lightdash-cli-2.624.0-linux-x64.tar.gz"
    sha256 "24ffdcc2614ca1768485950b3054ea48559e77a17f449d120856ffb74045d11d"

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
