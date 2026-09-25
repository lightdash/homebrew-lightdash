class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.344.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.344.7/lightdash-cli-2.344.7-macos-arm64.tar.gz"
      sha256 "e66ed1c44242428b9531417f1f5cf4d1fe7ed9d0aaedc4757f55ed7b3ba55fa5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.344.7/lightdash-cli-2.344.7-macos-x64.tar.gz"
      sha256 "3005a780962f54dac4375bedc6c94d39cf8be93a701de5674ba7f10f37673e26"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.344.7/lightdash-cli-2.344.7-linux-x64.tar.gz"
    sha256 "4bedc34fdafcbf135c7805fe37b57c85a4e703066a6a36bb4a374e99b2b790c2"

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
